#!/bin/bash
set_env() {
  minishift start --vm-driver virtualbox
  eval $(minishift docker-env)
}

_build() {
  local base=$1
  docker build -t harryxinwang/sb-admin:${base} . -f Dockerfile.${base}
}

_run() {
  local base=$1
  docker run -d --name sa-${base} -p 8080:80 harryxinwang/sb-admin:${base}
}

_rm_run() {
  local base=$1
  _rm ${base}
  _run ${base}
}

_start() {
  local base=$1
  docker start sa-${base}
}

_get_running_name() {
 echo $(docker ps | grep sa | grep 8080 | grep -o -E 'sa-[a-z]+')
}

_get_running() {
 echo $(docker ps | grep sa | grep 8080)
}

_get_ps_name() {
  local base=$1
  echo $(docker ps -a | grep sa | grep -o -E "sa-${base}")
}

_restart() {
  local base=$1
  docker start sa-${base}
}

_stop() {
  local base=$1
  docker stop sa-${base}
}

_rm() {
  local base=$1
  docker rm sa-${base}
}

_deploy_cloud() {
  local cloud=$1
  local template_func=$2
  local base=$3
  local template="sa.template.${cloud}.yaml"
}

_openshift_template_func() {
  local template=$1
  local base=$2
  oc process -f ${template} -p IMAGE="harryxinwang/sb-admin:${base}" | oc replace -f -
  # oc process -f sa.template.openshift.yaml -p IMAGE="harryxinwang/sb-admin:httpd" | oc create -f -
}

deploy_openshift() {
  local base=$1
  _deploy_cloud 'openshift' _openshift_template_func ${base}
}

start_httpd() {
  #docker run -d --name sa-httpd -p 8080:80 harryxinwang/sb-admin:httpd
  _start 'httpd'
}

build_httpd() {
  _build 'httpd'
}

run_httpd() {
  _run 'httpd'
}

stop_httpd() {
  _stop 'httpd'
}

################################################################################
# Do not need to check the resource type httpd/nginx, but only check the
#   occupied environment resource (network port or the route)
# Arguments:
#   check_func function to check whether a resource is running
#   halt_func stop the running resource
#   up_func start a resource to be run
#   base the resource type
# Returns:
#   None
################################################################################
_check_halt_up() {
  local check_func=$1
  local halt_func=$2
  local up_func=$3
  local base=$4
  local result=$(${check_func})
  if [[ ! -z ${result} ]]; then ${halt_func} ${result}; fi
  ${up_func} ${base}
}

################################################################################
# Destroy and recreate a new resource, must have the same type
# Arguments:
#   check_func function to check whether a resource exists
#   destroy_func destroy the existing resource
#   create_func create a new resource
#   base the resource type
# Returns:
#   None
################################################################################
_check_destroy_create() {
  local check_func=$1
  local destroy_func=$2
  local create_func=$3
  local base=$4
  local result=$(${check_func} ${base})
  #echo "result=${result}"
  if [[ ! -z ${result} ]]; then ${destroy_func} ${base}; fi
  ${create_func} ${base}
}

_check_stop_start() {
  local base=$1
  _check_halt_up _get_running_name _stop _start ${base}
}

_check_rm_run() {
  local base=$1
  _check_destroy_create _get_ps_name _rm _run ${base}
}

restart() {
  local base=$1
  _check_stop_start ${base}
}

rerun() {
  local base=$1
  _check_rm_run ${base}
}

COMMANDS='set_env'
COMMANDS+=';deploy_openshift'
COMMANDS+=';_deploy_cloud'
COMMANDS+=';rerun'
COMMANDS+=';restart'
COMMANDS+=';_check_stop_start'
COMMANDS+=';_check_rm_run'
COMMANDS+=';_check_halt_up'
COMMANDS+=';_check_destroy_create'
COMMANDS+=';_get_running'
COMMANDS+=';_get_running_name'
COMMANDS+=';_get_ps_name'
COMMANDS+=';_build'
COMMANDS+=';_run'
COMMANDS+=';_start'
COMMANDS+=';_stop'
COMMANDS+=';build_httpd'
COMMANDS+=';run_httpd'
COMMANDS+=';start_httpd'
COMMANDS+=';stop_httpd'
COMMANDS+=';usage'

execute_on_list() {
  IFS=';' read -r -a args <<< "$1"
  call=$2
  for command in ${args[@]}
  do
    ${call} ${command}
  done
}

usage_item() {
  echo "setup.sh $1"
}

usage() {
  echo "Valid commands are:"
  execute_on_list ${COMMANDS} usage_item
}

setup() {
  IFS=';' read -r -a args <<< "$COMMANDS"
  for command in ${args[@]}
  do
    if [[ "$command" = "$1" ]]; then
      echo $command
      ${command} ${@:2}
      return 0
    fi
  done
  echo "Unknown sub command: $1"
  usage
}

setup ${@:1}
