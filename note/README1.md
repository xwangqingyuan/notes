# cloud
## Kubernetes  k8s
### kubernetes trends
 * https://www.nextplatform.com/2016/11/08/google-wants-kubernetes-rule-world/
 * we look at product maturity, enterprise adoption, and community strength. And in all of these areas, Kubernetes significantly outshines
 * https://www.nextplatform.com/2017/02/01/riding-coattails-google-kubernetes-aws-lambda/  coattails 燕尾
## kubernetes advertise
 * http://www.stratoscale.com/blog/kubernetes/container-orchestration-kubernetes-12-key-features/
### big data on kubernetes
### 动态设置docker 和kubelet
 * https://github.com/kubernetes/kubernetes/issues/27980

#### spark on kubernetes
 * https://github.com/mattf/openshift-spark/blob/master/Makefile 简单的spark demo
 * https://hub.docker.com/r/radanalyticsio/openshift-spark/
 * https://github.com/radanalyticsio/openshift-spark
 * https://elmiko.github.io/2016/11/16/spark-on-openshift-with-oshinko.html https://github.com/radanalyticsio/oshinko-webui
 * spark on openshift 项目 oshinko 日式泡菜
 * https://github.com/shekhargulati/spark-openshift-quickstart
 * https://github.com/mattf/openshift-spark/tree/master/scripts/spark
 * https://blog.openshift.com/running-analytics-openshift-daikon/  spark 架构图 daikon 白萝卜
 * https://github.com/openshift
 * https://github.com/kubernetes/kubernetes/issues/34377 https://github.com/apache-spark-on-k8s/spark
 * https://github.com/kubernetes-incubator/application-images/issues/12
#### spark on openshift
 * http://commons.openshift.org/sig/OpenshiftBigData.html Big Data on OpenShift  https://blog.openshift.com/big-data-and-apache-spark-on-openshift-pt-i-openshift-commons-briefing-44/
 * https://github.com/wattsteve/pyspark-tutorial  https://github.com/wattsteve/ 关注glusterfs,spark on openshift
 * https://hub.docker.com/r/getwarped/tensorflow-notebook/
 * https://github.com/getwarped/jupyter-stacks https://github.com/getwarped/jupyter-stacks/tree/master/minimal-notebook https://github.com/getwarped/jupyter-stacks/tree/master/tensorflow-notebook 所有的notebook
 * https://github.com/getwarped/powershift-cli python for openshift
#### spark on cloudfoundtry
 * https://github.com/murraju/spark-boshrelease

#### flink on kubernetes
 * https://github.com/melentye/flink-kubernetes
 * https://www.dezyre.com/article/apache-flink-vs-spark-will-one-overtake-the-other/282
 * https://www.zhihu.com/question/30151872
 * https://github.com/kubernetes/kubernetes/tree/master/examples/spark
 * http://blog.kubernetes.io/2016/03/using-Spark-and-Zeppelin-to-process-Big-Data-on-Kubernetes.html
### concepts 概念
 *  http://www.infoq.com/cn/articles/Kubernetes-system-architecture-introduction?utm_campaign=infoq_content&utm_source=infoq&utm_medium=feed&utm_term=global
 * http://kubernetes.io/docs/user-guide/volumes/
  * https://github.com/kubernetes/kubernetes/blob/bf0a5e9fac1baab23a1db007bc798e4f9630f4f2/docs/proposals/volume-selectors.md
 * http://dockone.io/article/1153 比较 borg omega
 * http://blog.kubernetes.io/2015/06/the-distributed-system-toolkit-patterns.html
 * learn kubernetes links
  * https://github.com/kubernetes/kubernetes/blob/master/CHANGELOG.md/#v130
  * http://kubernetes.io/docs/user-guide/petset/
  * https://github.com/kubernetes/kubernetes/tree/master/docs/design
  * http://kubernetes.io/docs/user-guide/petset/bootstrapping/
* https://github.com/kubernetes/kubernetes/issues/1201  kubernetes   的annotation和label区别
* https://github.com/kubernetes/kubernetes/issues/341  kubernetes 的label为什么不支持模糊匹配
* https://github.com/kubernetes/kubernetes/issues/1348 label反向匹配
* https://github.com/kubernetes/kubernetes/issues/4817 Efficient lookup by label selection, reverse label selection, uid, and IP addresses
* https://github.com/kubernetes/kubernetes/issues/22262 schedule slow
#### Reconciliation Loop 调和循环
 * http://freecontent.manning.com/kubernetes-in-action-introducing-replication-controllers/
 * https://www.slideshare.net/SatnamSingh67/2015-0605-cluster-management-with-kubernetes keep scheduler simple
#### 动态分配存储 provisioner
 * https://github.com/kubernetes/kubernetes/blob/962d51ec682a14ef2d926175bbc614bac69f3197/pkg/controller/volume/persistentvolume/controller.go
 * https://github.com/kubernetes/kubernetes/blob/88c977c34ac9c0edc8b6be8034b2d5b47a5735e2/pkg/volume/glusterfs/glusterfs.go
 * https://azure.microsoft.com/en-us/documentation/articles/storage-dotnet-how-to-use-files/
 * https://azure.microsoft.com/en-us/pricing/details/storage/
#### kubernetes DAG kubernetes workflow
 * https://github.com/sdminonne/workflow-controller/tree/master/examples/two_steps
 * https://github.com/kubernetes/kubernetes/pull/18827
#### kubernetes paas
 * https://medium.com/@shijuvar/the-evolution-of-cloud-paas-to-container-ecosystem-1943a335c25b#.7gwiv5dc9
 * http://kubernetes.io/docs/whatisk8s/
 * https://github.com/kubernetes/kubernetes/blob/master/docs/whatisk8s.md#why-do-i-need-kubernetes-and-what-can-it-do
 * https://www.ctl.io/developers/blog/post/what-is-kubernetes-and-how-to-use-it/
 * https://www.sdxcentral.com/articles/news/why-docker-and-google-kubernetes-are-like-paas-done-right/2015/08/
#### kubernetes template
 * https://github.com/InQuicker/ktmpl
 * https://github.com/mustache/mustache
 * go template http://studygolang.com/articles/1833
#### kubernetes quick start
 * http://kubernetes.io/docs/getting-started-guides/ubuntu/
 * http://kubernetes.io/docs/getting-started-guides/azure/
 * http://thenewstack.io/tutorial-configuring-ultimate-development-environment-kubernetes/
#### openshift devops
##### diagnostics
##### e2e testing
##### node problem detector
##### performance test
 * openshift/svt/applications_scalability/app-scalability.sh shell e2e commands
 * openshift/svt/openshift_scalability/pyconfig.yaml project template example
 * kubernetes/perf-tests performance tests
##### docker registry
##### upstream upgrade
##### gRPC
 * github.com/openshift/origin/hack/update-generated-protobuf.sh
 * github.com/openshift/origin/tools/genprotobuf/protobuf.go
 * github.com/openshift/origin/tools/genprotobuf/protoc-gen-gogo/main.go
 * types - genprotobuf - generated.proto - protoc-gen-gogo - generated.pb.go
 * github.com/openshift/origin/vendor/k8s.io/kubernetes/pkg/runtime/serializer/protobuf/protobuf.go serializer
##### document generation
 * github.com/openshift/origin/hack/update-generated-swagger-descriptions.sh  types - swagger_doc.go
 * hack/update-generated-swagger-spec.sh  api/swagger-spec/openshift-openapi-spec.json and api/protobuf-spec publish
 * hack/update-generated-swagger-docs.sh swagger-spec - _output/local/docs/swagger/api/v1/md
##### image scan
 * https://github.com/openshift/image-inspector
 * https://seven.centos.org/2016/11/introducing-centos-container-image-scanners/
#### kubernete security context constaints scc
 * https://github.com/kubernetes/kubernetes/blob/master/docs/design/security_context.md
 * https://kubernetes.io/docs/concepts/policy/container-capabilities/#capabilities
 * 基于角色的安全 https://kubernetes.io/docs/concepts/policy/pod-security-policy/  https://github.com/kubernetes/kubernetes/blob/master/examples/podsecuritypolicy/rbac/README.md
 * https://blog.openshift.com/understanding-service-accounts-sccs/
 * https://docs.openshift.org/latest/admin_guide/manage_scc.html hostPath权限问题
 * http://man7.org/linux/man-pages/man2/mknod.2.html
 * http://man7.org/linux/man-pages/man2/chroot.2.html
 * http://man7.org/linux/man-pages/man2/setuid.2.html
 * http://man7.org/linux/man-pages/man2/setgid.2.html
 * http://kubernetes.io/docs/user-guide/pod-security-policy/
 * http://unix.stackexchange.com/questions/18198/gid-current-primary-supplementary-effective-and-real-group-ids
 * http://kubernetes.io/docs/user-guide/containers/  docker cap 和 linux cap的对应
 * http://man7.org/linux/man-pages/man7/capabilities.7.html     linux所有权限说明
 * http://man7.org/linux/man-pages/man1/capsh.1.html  查看权限命令
#### selinux references
 * https://wiki.centos.org/HowTos/SELinux#head-563ca75234163cdfa0ef056f1f82d4d396526d2b troubleshooting
 * https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/6/html/Security-Enhanced_Linux/sect-Security-Enhanced_Linux-SELinux_Contexts-SELinux_Contexts_for_Processes.html
 * https://wiki.centos.org/HowTos/SELinux
```
semanage login -l
semanage user -l
semanage port -l | grep http
semanage fcontext -l | grep ssh
Multi-Category Security (MCS) When an access vector is computed for a process that is associated with mcs_constrained_type, only the MCS compartments of the high level are compared. The second point is due to the fact that MLS is not in use.
```
#### apparmor
 * https://www.cyberciti.biz/tips/selinux-vs-apparmor-vs-grsecurity.html
 * https://wiki.ubuntu.com/AppArmor
 * https://help.ubuntu.com/14.04/serverguide/apparmor.html
 * https://wiki.ubuntu.com/DebuggingApparmor
 * http://wiki.apparmor.net/index.php/AppArmor_Core_Policy_Reference#Capability_rules
 * https://docs.docker.com/engine/security/apparmor/#understand-the-policies
 * https://kubernetes.io/docs/tutorials/clusters/apparmor/
 * http://www.insanitybit.com/2012/06/01/why-i-like-apparmor-more-than-selinux-5/
 * https://github.com/kubernetes/community/blob/master/contributors/design-proposals/apparmor.md

```
apt-get install apparmor-utils 安装aa-genprof
apparmor_status
cat /etc/apparmor.d/usr.sbin.libvirtd
aa-complain /path/to/bin
aa-enforce /path/to/bin
docker run --rm -it --security-opt apparmor=docker-default hello-world
cat /sys/module/apparmor/parameters/enabled
```
#### seccomp
 * seccomp (short for secure computing mode) is a computer security facility
 * https://github.com/docker/docker/blob/master/profiles/seccomp/default.json
 * https://docs.openshift.com/container-platform/3.3/admin_guide/seccomp.html
 * https://github.com/kubernetes/community/blob/master/contributors/design-proposals/seccomp.md
#### SCC errors
```
Dec 24, 2016 7:55:13 AM org.apache.catalina.startup.Catalina load
WARNING: Unable to load server configuration from [/usr/local/tomcat/conf/server.xml]
Dec 24, 2016 7:55:13 AM org.apache.catalina.startup.Catalina load
WARNING: Permissions incorrect, read permission is not allowed on the file.
Dec 24, 2016 7:55:13 AM org.apache.catalina.startup.Catalina load
WARNING: Unable to load server configuration from [/usr/local/tomcat/conf/server.xml]
Dec 24, 2016 7:55:13 AM org.apache.catalina.startup.Catalina load
WARNING: Permissions incorrect, read permission is not allowed on the file.
Dec 24, 2016 7:55:13 AM org.apache.catalina.startup.Catalina start
SEVERE: Cannot start server. Server instance is not configured.

```
To fix
```
oc adm policy add-scc-to-user anyuid system:serviceaccount:test-stress:default
```
 localpollicy https://github.com/openshift/origin/pull/8428
#### node-problem-detector
 * https://github.com/kubernetes/node-problem-detector
 * https://trello.com/c/d9HZmoaR/171-5-node-r-d-adoption-of-node-problem-detector openshift feature

#### kubernetes compose
 * https://github.com/kubernetes-incubator/kompose
 * http://kompose.io/index
 * https://github.com/redhat-developer/opencompose
 * http://developers.redhat.com/blog/2016/11/03/container-orchestration-specification-for-better-devops/
#### 下载kubectl
 * https://storage.googleapis.com/kubernetes-release/release/v1.3.0/bin/darwin/amd64/kubectl
#### monokube
 * https://github.com/polvi/monokube 全部打包到一个二进制文件
#### 下载容器
 * https://github.com/kubernetes/kubernetes/issues/6888
 * https://github.com/kubernetes/minikube
 * 更新容器镜像
```
  minikube start --extra-config=kubelet.PodInfraContainerImage=docker.io/kubernetes/pause
```
```
 kubectl set image deployment/kubedash kubedash=index.tenxcloud.com/google_containers/kubernetes-dashboard-amd64:v1.4.0
```
#### kubectl delete
```
# 强制删除pod, 当某些pod 卡死在TERMINATING状态时
kubectl delete pod NAME --grace-period=0
```
#### kubectl exec
 * kubectl exec gogs-2717905640-v96iy -- bash -c '/bin/echo hello > /tmp/result.log'
 * 往容器里复制文件，https://github.com/kubernetes/kubernetes/issues/13776
```
mount -t glusterfs 192.168.1.133:/glustersample1 /mnt/glustersample1
192.168.1.133:/glustersample1   32G   27G  5.7G  83% /mnt/glustersample1
root@dev-xwang:~# gluster volume quota glustersample1 limit-usage / 32GB
 kubectl exec -i gogs-2717905640-v96iy -- bash -c '/bin/cat >/tmp/test.txt' < test.txt
 kubectl exec -i gogs-2717905640-v96iy -- bash -c '/bin/cat /tmp/test.txt'
curl -k -v -XPOST  -H "Accept: application/json, */*" -H "Authorization: Bearer lhdBRBj5xeuhnLNKx3oXut1RBrWYdY2fCj7AM6eLzFI" -H "Content-Type: application/json" -H "User-Agent: qy/ (darwin/amd64) openshift/6600efc" --Data "{\"kind\":\"RoleBinding\",\"apiVersion\":\"v1\",\"metadata\":{\"name\":\"cluster1\",\"namespace\":\"roledev\",\"creationTimestamp\":null},\"userNames\":[\"xwang\"],\"groupNames\":null,\"subjects\":[{\"kind\":\"User\",\"name\":\"xwang\"}],\"roleRef\":{\"name\":\"cluster1\"}}" https://192.168.1.168:8443/oapi/v1/namespaces/roledev/rolebindings
curl -k -v -XPOST  -H "Accept: application/json, */*" -H "Authorization: Bearer lhdBRBj5xeuhnLNKx3oXut1RBrWYdY2fCj7AM6eLzFI" -H "Content-Type: application/json" -H "User-Agent: qy/ (darwin/amd64) openshift/6600efc" --Data "{\"kind\":\"RoleBinding\",\"apiVersion\":\"v1\",\"metadata\":{\"name\":\"role2\",\"namespace\":\"roledev\",\"creationTimestamp\":null},\"userNames\":[\"xwang\"],\"groupNames\":null,\"subjects\":[{\"kind\":\"User\",\"name\":\"xwang\"}],\"roleRef\":{\"name\":\"role2\",\"namespace\":\"roledev\"}}" https://192.168.1.168:8443/oapi/v1/namespaces/roledev/rolebindings

```
#### 安装 kubernetes
 * http://blog.kubernetes.io/2016/09/how-we-made-kubernetes-easy-to-install.html

#### platform9
 * https://platform9.com/managed-kubernetes/
 * https://platform9.com/managed-openstack/
 * https://platform9.com/fission/ https://github.com/fission/fission  serverless Functions

#### kubernetes network
 * https://www.slideshare.net/CJCullen/kubernetes-networking-55835829
 * http://dockone.io/article/1935 calico vs contiv
 * http://www.opencontrail.org/opencontrail-architecture-documentation/#section1 opencontrail
 * http://feisky.xyz/sdn/container/kubernetes.html ovn  Romana LVS DPDK ...
 * http://www.nirmata.com/2016/05/networking-microservices-with-cisco-contiv-and-nirmata/ service isolation
#### kubernetes network practice
 * http://mt.sohu.com/20170222/n481366309.shtml 京东
 * http://sanwen.net/a/gulwwbo.html 一个适合 Kubernetes 的最佳网络互联方案
#### kubernetes 编排 hypervisor 虚拟机
 * https://github.com/kubernetes/frakti
#### kubernetes secret 使用
 * http://kubernetes.io/docs/user-guide/secrets/
 * https://github.com/kubernetes/kubernetes/blob/master/docs/design/secrets.md 设计 design
 * http://blog.ployst.com/development/2015/12/22/letsencrypt-on-kubernetes.html nginx proxy 做SSL认证
 * https://github.com/kubernetes/kubernetes/issues/10439#issuecomment-162792477 kubernetes secret and vault
 * https://news.ycombinator.com/item?id=10927043 讨论在微服务架构中如何保证秘密
 * https://github.com/kubernetes/kubernetes/issues/12742 有关安全存储 etcd的讨论
 * https://www.bountysource.com/issues/5578080-secret-distribution-in-docker-k8s  k8s 密钥分发的讨论
#### vault secret management
 * https://github.com/hashicorp/vault
 * https://www.hashicorp.com/blog/vault.html
 * https://www.vaultproject.io/
 * https://github.com/upmc-enterprises/kubernetes-secret-manager  集成的代码
 * http://www.devoperandi.com/vault-in-kubernetes-take-2/ 在k8s中使用Vault
 * https://github.com/kubernetes/kubernetes/issues/10439 讨论集成 Vault的issue
 * https://www.digitalocean.com/company/blog/vault-and-kubernetes/ 通过Vault集成CA
#### awesome kubernetes
 * https://github.com/ramitsurana/awesome-kubernetes#operators
#### 扩展kubernetes API
 * https://github.com/kubernetes/kubernetes/blob/master/docs/design/extending-api.md
 * http://kubernetes.io/docs/user-guide/thirdpartyresources/
 * https://github.com/coreos/etcd-operator coreos operator
 * https://github.com/upmc-enterprises/elasticsearch-operator  https://github.com/sapcc/kubernetes-operators openstack operator
 * https://coreos.com/press/coreos-introduces-operators.html
 * https://coreos.com/blog/introducing-operators.html
 * https://groups.google.com/forum/#!topic/kubernetes-sig-network/7skwy2jXWWk
 * http://www.devoperandi.com/kubernetes-automation-with-stackstorm-and-thirdpartyresources/
 * https://storage.googleapis.com/kubernetes-release/release/v1.4.6/bin/darwin/amd64/kubectl 下载
 * https://coreos.com/blog/the-prometheus-operator.html https://github.com/coreos/prometheus-operator
 * https://coreos.com/blog/introducing-operators.html
#### operators ecosystem
 * https://coreos.com/blog/kubernetes-operators-ecosystem.html
#### openstack operator vcenter operator
 * https://github.com/sapcc/kubernetes-operators
#### PostgreSQL Operator
 * https://github.com/CrunchyData/postgres-operator
 * http://info.crunchydata.com/blog/postgres-operator-for-kubernetes
 * https://github.com/kelseyhightower/kube-cert-manager
#### mysql operator
 * https://github.com/ipedrazas/mysql-operator
 * https://github.com/weixinhost/litedb
#### rook Operator
 * https://github.com/rook/rook
 * https://blog.rook.io/rook-operator-first-class-storage-for-kubernetes-2d0288831175
#### elasticsearch Operator
 * https://github.com/upmc-enterprises/elasticsearch-operator
 * https://github.com/upmc-enterprises/elasticsearch-operator/issues/7
 * https://github.com/reactiveops/AWS-ElasticSearch-Operator
#### kafka operator
 * https://github.com/krallistic/kafka-operator https://github.com/Yolean/kubernetes-kafka
##### kafka performance
 * https://dzone.com/articles/exploring-message-brokers http://jm.taobao.org/2016/04/01/kafka-vs-rabbitmq-vs-rocketmq-message-send-performance/
##### NATS vs。 kafka
 * https://dzone.com/articles/benchmarking-nats-streaming-and-apache-kafka
 * https://github.com/nats-io/gnatsd
 * https://thenewstack.io/apcera-nats-moves-real-time-message-stream-brokering/
 * https://www.cloudkarafka.com/blog/2016-12-05-apachekafka-vs-rabbitmq.html https://www.quora.com/What-are-the-differences-between-Apache-Kafka-and-RabbitMQ
 * http://blog.csdn.net/linsongbin1/article/details/47781187  性能比较
#### memcached operator
 * https://github.com/kbst/memcached
 * https://www.kubestack.com/catalog/memcached
#### clustered rabbitmq
 * https://www.mirantis.com/blog/clustered-rabbitmq-kubernetes/
 * https://www.ekito.fr/people/mqtt-benchmarks-rabbitmq-activemq/ rabbitmq 5:1 activemq
#####
 * https://blogs.vmware.com/vfabric/2013/02/choosing-your-messaging-protocol-amqp-mqtt-or-stomp.html
#### NATS operator
 * https://github.com/pires/nats-operator  https://github.com/nats-io/gnatsd
### kubernetes scheduler
 * http://kubernetes.io/docs/admin/kube-scheduler/
 * http://kubernetes.io/docs/admin/multiple-schedulers/  scheduler.alpha.kubernetes.io/name:
 * https://docs.openshift.org/latest/admin_guide/scheduler.html#use-cases openshift scheduler use cases
 * https://coreos.com/blog/improving-kubernetes-scheduler-performance.html performance
 * https://github.com/kubernetes/kubernetes/blob/master/docs/devel/scheduler.md scheduler 原理
 * https://github.com/kubernetes/kubernetes/blob/2f756e4ebc677c824d495bb5e10aa9d2234de686/plugin/pkg/scheduler/generic_scheduler.go scheduler 基础
 * https://github.com/kubernetes/kubernetes/blob/2f756e4ebc677c824d495bb5e10aa9d2234de686/plugin/cmd/kube-scheduler/app/server.go 创建scheduler 的地方
### kubernetes performance k8s性能
 * https://github.com/openshift/svt
 * https://github.com/distributed-system-analysis/pbench
### kubernetes 1.6
 * https://github.com/kubernetes/community/blob/master/contributors/design-proposals/taint-toleration-dedicated.md
 * https://github.com/kubernetes/kubernetes/issues/1574 forgiveness
 * https://github.com/kubernetes/features/issues/117
 * https://github.com/kubernetes/features/issues/118
### Xeon Phi intel mic
 * https://software.intel.com/en-us/forums/intel-many-integrated-core/topic/597934  Running Xeon Phi using dockers
 * https://github.com/intel/caffe Intel Xeon Phi processor  docker
 * http://www.univa.com/about/news/press_2016/06202016.php  Xeon Phi Docker containers
 * https://en.wikipedia.org/wiki/Xeon_Phi  http://www.devoperandi.com/kubernetes-not-just-cpu-and-ram-opaque-integer-resources/
#### HPC docker
 * http://insidehpc.com/tag/docker/ workflow for building and testing Docker containers and their deployment on an HPC system using Shifter
 * http://insidehpc.com/2017/02/video-singularity-containers-science-reproducibility-hpc/
### pachyderm (大家伙) dockerized data platform
 * https://github.com/pachyderm
 * https://github.com/kalugny/pypachy
 * https://thenewstack.io/pachyderm-aims-displace-hadoop-container-based-collaborative-data-analysis-platform/
### kubernetes operations
#### Bring it Together
 * https://sematext.com/spm/
#### high availability
 * http://www.infoq.com/cn/news/2013/04/BOC-Downtime/
#### hyper
 * https://github.com/hyperhq
 * https://github.com/kubernetes/frakti
 * https://thenewstack.io/hyper-sh-mixes-containers-hypervisors-something-called-hypernetes/
#### microservice platform
 * http://wildfly.org/about/
 * http://deis.io/overview/
 * https://deis.com/docs/workflow/
 * http://www.csdn.net/article/2015-09-28/2825811
 * OpenResty http://hot66hot.iteye.com/blog/2155036
 * Hystrix
 * http://hot66hot.iteye.com/blog/2155036
 * http://www.infoq.com/cn/news/2013/01/netflix-hystrix-fault-tolerance
 * Motan
 * http://www.tuicool.com/articles/qEvENr
 * http://tech.comnews.cn/rjzx/2016-05-10/184948.html
 * amalgam8
 * https://www.amalgam8.io/
 * https://github.com/mfornos/awesome-microservices
 * http://www.devopsbookmarks.com/ci devopsbookmarks 持续集成技术列表
#### design pattern
 * https://github.com/kamranahmedse/design-patterns-for-humans/blob/master/README.md#behavioral-design-patterns
 *
#####
 * http://houzhe11.iteye.com/blog/494296 　ActiveRecord TableGateway Table Module
#### microservices service discovery and registry 服务发现
 * http://blog.christianposta.com/microservices/netflix-oss-or-kubernetes-how-about-both/ AP or CP 的问题讨论，用DNS,基于kubernetes的服务发现
 * http://blog.christianposta.com/microservices/microservices-2-0/ https://github.com/lyft/envoy/ microservice proxy sidecar https://www.somethingsimilar.com/2013/01/14/notes-on-distributed-systems-for-young-bloods/
 * https://github.com/BuoyantIO/linkerd
 * https://linkerd.io/overview/how-to-use-it/  服务发现的中间件 支持熔断
 * http://callistaenterprise.se/blogg/teknik/2016/05/27/building-a-microservice-with-golang/  golang connect to spring cloud
 * https://martin.kleppmann.com/2015/05/11/please-stop-calling-databases-cp-or-ap.html
 * https://tech.knewton.com/blog/2014/12/eureka-shouldnt-use-zookeeper-service-discovery/
#### martin fowler microservices
 * http://martinfowler.com/articles/microservices.html
 * http://martinfowler.com/bliki/MicroservicePrerequisites.html
 * http://martinfowler.com/articles/microservice-trade-offs.html
 * http://www.rgoarchitects.com/Files/fallacies.pdf
#### martin fowler cloud native application
 * http://martinfowler.com/bliki/CloudComputing.html
 * Basics of web application security http://martinfowler.com/articles/web-security-basics.html
 * https://www.infoq.com/articles/transitioning-cloud-native
#### redhat microservice platform
 * https://dzone.com/users/436713/christian.posta.html
 * http://blog.christianposta.com/posts/
 * http://developers.redhat.com/ticket-monster/
 * http://blog.christianposta.com/microservices/the-real-success-story-of-microservices-architectures/
 * http://blog.christianposta.com/microservices/netflix-oss-or-kubernetes-how-about-both/
#### microservice pattern
 * https://www.voxxed.com/blog/2015/04/coupling-versus-autonomy-in-microservices/
 * publish-subscribe to turn MxN dependencis to M+N dependencies
 * https://www.voxxed.com/blog/2015/04/microservice-design-patterns/
#### reliability patttern microservice design patterns
http://www.javaworld.com/article/2824163/application-performance/stability-patterns-applied-in-a-restful-architecture.html?page=3
http://assets.en.oreilly.com/1/event/79/Stability%20Patterns%20Presentation.pdf
#### spring cloud
http://stackoverflow.com/questions/30701673/how-to-use-spring-cloud-from-nodejs
http://stackoverflow.com/questions/33007887/how-to-register-node-app-with-spring-cloud-and-netflixs-eureka
https://spring.io/guides/gs/spring-cloud-and-lattice/
http://lattice.cf/
#### spring boot
 * develop with spring boot and kubernetes http://blog.christianposta.com/microservices/spring-boot-microservice-development-on-kubernetes-the-easy-way/
#### micro service example

 * https://github.com/kbastani/spring-cloud-microservice-example 电影推荐应用
 * https://github.com/kbastani/spring-cloud-event-sourcing-example 电子商城应用
 * https://github.com/kbastani/spring-cloud-polyglot-persistence-example 电影推荐应用
   - https://hub.docker.com/u/dockerniu/    电影推荐应用镜像
   - https://hub.docker.com/u/docker4tracy/     电影推荐应用镜像
   - http://www.kennybastani.com/
 * https://www.udacity.com/course/scalable-microservices-with-kubernetes--ud615
 * https://github.com/kelseyhightower/kubernetes-redis-cluster
 * https://www.udacity.com/account/auth#!/signin?next=https%3A%2F%2Fclassroom.udacity.com%2Fcourses%2Fud615&enroll=ud615
 *
 * https://github.com/zutherb/AppStash/tree/master/kubernetes
   https://github.com/eventuate-local/eventuate-local/blob/master/eventuate-local-java-embedded-cdc/src/main/java/io/eventuate/local/cdc/debezium/EventTableChangesToAggregateTopicRelay.java event source platform eventuate
 * http://eventuate.io/exampleapps.html  案例程序
 * willb/notebook                              tutorial  hub.qingyuanos.com/game/notebook            tutorial spark tutorial

#### 有趣应用
 * https://hub.docker.com/r/daehyeok/freecodecamp/
 * https://hub.docker.com/r/xblaster/tensor-guess/ 分类程序
 * https://hub.docker.com/r/moviemasher/angular-moviemasher/ 电影编辑网页
 * https://hub.docker.com/r/dubuqingfeng/docker-web-game    红白机程序
 * https://hub.docker.com/r/ardilgulez/html5game    多人小游戏
 * https://hub.docker.com/r/benb88/game_of_life     生命游戏
 * http://www.conwaylife.com/wiki/Main_Page  congway game_of_life know how
 * https://hub.docker.com/r/agoodno/match-game/     closure web page
 * https://github.com/alexey-ernest/auction-game  拍卖游戏
 * https://github.com/odoo/odoo     ERP系统   http://www.greenodoo.com/
 * https://github.com/buke/GreenOdoo        http://demo7.greenodoo.com/     http://git.oschina.net/wangbuke/GreenOdoo
 * https://github.com/maxexcloo/Docker  docker应用    http://www.silvergames.com/t/minecraft  minecraft games

## openstack
### release notes
 * https://wiki.openstack.org/wiki/ReleaseNotes/Liberty
### configuration 配置，常用驱动 driver
 * http://docs.openstack.org/liberty/config-reference/content/ceph-rados.html
 * documents http://docs.openstack.org/
 * APIs http://developer.openstack.org/api-ref.html
 *

### 配置模版格式
 * https://github.com/toml-lang/toml/blob/master/examples/example-v0.4.0.toml  类似ini的模版格式
 * https://github.com/dbohdan/remarshal
```
kubectl get svc nginx -o yaml | ./remarshal.py -if yaml -of toml
```
 * http://kubernetes.io/docs/user-guide/kubectl/kubectl_annotate/  --overwrite 在命令行覆盖配置文件中的属性

### openstack HA
 * https://www.mirantis.com/blog/ha-platform-components-mysql-rabbitmq/
 * https://wiki.openstack.org/wiki/OpenStack_cascading_solution
 * http://www.stratoscale.com/blog/openstack/openstack-liberty-high-availability-overview-and-guidelines-part-1/
 * https://www.slideshare.net/kamesh001/high-available-for-openstack
 * https://www.slideshare.net/arthurberezin/deep-dive-into-highly-available-open-stack-architecture-openstack-summit-vancouver-2015
 * https://www.slideshare.net/kamesh001/high-available-for-openstack
### ironic bare-metal provisioning
 * https://www.mirantis.com/blog/bare-metal-provisioning-with-openstack-cloud/

### compare with vmware
 * http://www.slideshare.net/mirantis/how-to-compare-vmware-and-openstack
 * https://www.mirantis.com/blog/cloud-prizefight-vmware-vs-openstack/

### Openstack 架构
 * http://www.slideshare.net/mirantis/openstack-architecture-43160012

### compare openstack vmware
 * https://cloudarchitectmusings.com/2013/06/24/openstack-for-vmware-admins-nova-compute-with-vsphere-part-1/
 * https://cloudpundit.com/2012/04/06/ecosystems-in-conflict-amazon-vs-vmware-and-openstak/
 * http://www.tomsitpro.com/articles/private-cloud-providers-comparison,2-899.html
 * https://www.mirantis.com/blog/cloud-prizefight-vmware-vs-openstack/

### Openstack 子项目
 * http://www.openstack.org/software/project-navigator/

### Openstack 解决方案设计
 * http://www.slideshare.net/mirantis/os-boston-meetuppreso10sept2014v2?related=1

### heat openstack 编排
 * http://hardysteven.blogspot.jp/2015/05/heat-softwareconfig-resources.html 软件配置安装
 * https://github.com/openstack/tripleo-heat-templates 用Openstack 安装openstack
 * http://docs.openstack.org/developer/heat/template_guide/software_deployment.html Openstack配置软件的3中方式
 * https://www.openstack.org/assets/presentation-media/heat-software-config.pdf
 * http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-init.html http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-init.html AWS
 * http://cloudinit.readthedocs.org/en/latest/ 通用的配置云主机的脚本
 * windows 安装软件 http://www.bubuko.com/infodetail-705509.html  https://cloudbase.it/cloudbase-init/ https://github.com/openstack/cloudbase-init

### kolla deployment with ansible and docker
 * https://github.com/openstack/kolla
 * https://github.com/openstack/kolla/blob/master/doc/quickstart.rst
 * https://github.com/openstack/kolla/blob/master/doc/deployment-philosophy.rst
 * https://github.com/openstack/kolla/tree/master/ansible/roles
### manila share storage
 * https://netapp.github.io/openstack-deploy-ops-guide/kilo/content/section_manila-key-concepts.html#manila.share.access_rules
 * https://netapp.github.io/openstack-deploy-ops-guide/kilo/content/section_manila-deployment-choices.html#d6e3518

### murano 应用目录
 * https://wiki.openstack.org/wiki/Murano/ApplicationCatalog
 * https://wiki.openstack.org/wiki/Murano
 * 项目详细信息  https://www.mirantis.com/blog/integrating-openstack-and-kubernetes-with-murano/
 * 集成Kubernetes  https://www.mirantis.com/blog/integrating-openstack-and-kubernetes-with-murano/
 * slides introduction  http://www.openstack.org/assets/vancouver-summit/slidedecks/Serg-Melikyan-Murano-Bringing-Docker-Kubernetes-to-OpenStack.pdf
 * github https://github.com/openstack/murano-apps
 * 安装 http://docs.openstack.org/developer/murano/install/manual.html
 * https://www.mirantis.com/software/application-catalog-murano/

### Monasca 监控服务
 * https://wiki.openstack.org/wiki/Monasca
 * 项目详细信息  https://wiki.openstack.org/wiki/Monasca
 * docker 镜像 	 https://hub.docker.com/r/monasca/demo/
 * Dockers 和monasca集成项目  https://github.com/hpcloud-mon/monasca-docker
 * http://murano.readthedocs.io/en/stable-liberty/install/development.html

### neutron 网络

### magnum kubernetes 容器集群
 * https://review.openstack.org/#/c/204686/12/specs/container-networking-model.rst magnum设计
 * 脚本和配置 https://github.com/openstack/magnum/tree/master/magnum/templates/kubernetes/fragments
 * https://github.com/openstack/magnum/tree/master/magnum/templates/kubernetes/fragments 常用脚本和配置
 * 网络 https://wiki.openstack.org/wiki/Magnum/Networking
 * http://www.nextplatform.com/2015/11/12/inside-ebays-shift-to-kubernetes-and-containers-atop-openstack/ ebay 案例
 * http://docs.openstack.org/developer/magnum/ 工作进度
 * https://wiki.openstack.org/wiki/Magnum/Networking 网络
 * https://github.com/openstack/magnum/tree/master/doc/source 文档
 * 用户文档   https://github.com/openstack/magnum/blob/master/doc/source/userguide.rst
 * http://docs.openstack.org/developer/magnum/  不出错的文档

### floating ips
 * http://www.ibm.com/developerworks/cn/cloud/library/cl-openstack-network/

### Swift
#### Swift performance
 * http://www.gossamer-threads.com/lists/openstack/dev/38588
 * https://blog.zhaw.ch/icclab/evaluating-the-performance-of-ceph-and-swift-for-object-storage-on-small-clusters/
 * https://swiftstack.com/blog/2013/04/18/openstack-summit-benchmarking-swift/

#### 异地
http://docs.openstack.org/developer/swift/replication_network.html#dedicated-replication-network
http://docs.openstack.org/arch-design/multi-site-architecture.html

### Cinder
#### 本地存储优化
 * http://cloudgeekz.com/71/how-to-setup-openstack-to-use-local-disks-for-instances.html
 * http://docs.ceph.com/docs/master/rbd/rbd-openstack/

#### storage
 * http://www.techrepublic.com/blog/the-enterprise-cloud/block-level-storage-vs-file-level-storage-a-comparison/
 * http://docs.openstack.org/openstack-ops/content/storage_decision.html
 * http://www.iscsi.com/resources/File-Level-Storage-vs-Block-Level-Storage.asp
 * http://www.druva.com/blog/object-storage-versus-block-storage-understanding-technology-differences/
 * https://clusterhq.com/flocker/getting-started/
 * http://searchdatabackup.techtarget.com/tip/Storage-snapshot-technologies-in-data-backup-and-recovery
 * http://www.sharepointeur.com/virtual-machine-difference-snapshot-backup/

#### Snapshot 镜像准备，备份，快照
 * http://docs.openstack.org/developer/tripleo-docs/post_deployment/vm_snapshot.html
 * 下载系统镜像 http://docs.openstack.org/image-guide/obtain-images.html#official-ubuntu-images
 * 下载更改镜像 http://docs.openstack.org/image-guide/

### glance 镜像
 * windows 镜像准备 http://www.ibm.com/developerworks/cn/cloud/library/cl-openstack-images/index.html
 * 镜像下载链接 http://docs.openstack.org/image-guide/index.html
 * 保存导出镜像 http://zqfan.github.io/openstack/2014/05/20/export-openstack-instance-to-local-image/
 * 保存到初镜像 openstack image save
#### Openstack Image Signature 镜像签名
 * http://docs.openstack.org/security-guide/instance-management/security-services-for-instances.html
 * http://docs.openstack.org/ops-guide/ops_user_facing_operations.html
 * http://specs.openstack.org/openstack/nova-specs/specs/mitaka/implemented/image-verification.html
 * http://specs.openstack.org/openstack/glance-specs/specs/mitaka/implemented/image-signing-and-verification-support.html

### Trove 数据库
 * 支持的数据库 https://github.com/openstack/trove/tree/master/trove/templates

### Zaqar
 * 代码 https://github.com/openstack/zaqar

### Solum PaaS平台云
 * https://wiki.openstack.org/wiki/Solum/HighLevelRoadmap
 * Feature user stories https://wiki.openstack.org/wiki/Solum/FeatureBlueprints/ApplicationDeploymentAndManagement

### keystone 认证
 * https://www.mirantis.com/blog/understanding-openstack-authentication-keystone-pki/
 * http://blog.csdn.net/lynn_kong/article/details/9318719

### magnum
 * 中文介绍 http://blog.csdn.net/lyq2013/article/details/48849411
 *

### openstack client 客户端
 * http://docs.openstack.org/developer/python-openstackclient/index.html
 * http://www.ibm.com/developerworks/cn/cloud/library/cl-openstack-network/
 * https://pypi.python.org/pypi/python-openstackclient
 * floating ips
  - subnet show ext_sub 显示floating ip分配池
 * login to server
### virtualization
 * http://hazt1011.blog.51cto.com/1072107/1102327/
#### SRIOV
 * http://docs.oracle.com/cd/E38902_01/html/E38873/glbzi.html    SR-IOV  SRIOV Single Root I/O Virtualization, SR-IOV
 * https://github.com/clearcontainers/sriov docker sriov https://groups.google.com/forum/#!topic/docker-user/wg7LUMuvtbY
 * http://jason.digitalinertia.net/exposing-docker-containers-with-sr-iov/
 * https://github.com/docker/libnetwork/issues/1023 SRIOV for docker
 * https://software.intel.com/en-us/articles/single-root-inputoutput-virtualization-sr-iov-with-linux-containers
 * https://github.com/hustcat/sriov-cni  https://clearlinux.org/documentation/clear-containers.html  https://github.com/clearcontainers/sriov
 * https://groups.google.com/forum/#!msg/kubernetes-sig-network/b55amANyCNo/INHD0yvzBAAJ  DPDK and SR-IOV with Kubernetes
## openshift
### openshift roadmap changelog
 * https://ci.openshift.redhat.com/releases_overview.html

### General architecture
 * http://www.tuicool.com/articles/y6B73u
 * http://www.tuicool.com/articles/jEF3iub
 * https://github.com/openshift/openshift-pep/blob/master/openshift-pep-013-openshift-3.md
 * https://github.com/openshift/origin/blob/master/docs/openshift_model.md
 * https://docs.openshift.org/latest/install_config/native_container_routing.html
 * https://docs.openshift.org/latest/architecture/core_concepts/routes.html#routers
 * Openshift https://blog.openshift.com/what-is-devops-really/
 * https://blog.openshift.com/devops-and-openshift-a-perfect-match/
 * skydns https://devops.profitbricks.com/tutorials/setup-skydns-on-a-kubernetes-cluster/
 * 整个基于kubernetes和openshift的持续集成体系 https://blog.openshift.com/openshift-cloudbees-jenkins-enterprise-devops/
 * OpenShift 架构 https://blog.openshift.com/openshift-v3-deep-dive-docker-kubernetes/
 * OpenShift文档 	https://docs.openshift.org/latest/dev_guide/projects.html

### marketplace
 * https://marketplace.openshift.com/

### minishift
 * https://marketplace.openshift.com/
```
# config files
cd /mnt/sda1/var/lib/minishift
ls -aef
/usr/local/bin/openshift start --master-config=openshift.local.config/master/master-config.yaml --node-config=openshift.local.config/node-minishift/node-config.yaml
```

### openshift volumn
 * https://docs.openshift.org/latest/dev_guide/volumes.html#adding-volumes
 * https://access.redhat.com/documentation/en/red-hat-enterprise-linux-atomic-host/7/paged/getting-started-with-kubernetes/chapter-2-get-started-provisioning-storage-in-kubernetes
 * https://docs.openshift.com/enterprise/3.1/install_config/persistent_storage/dynamically_provisioning_pvs.html
 * https://docs.openshift.com/enterprise/3.1/install_config/configuring_openstack.html#install-config-configuring-openstack

#### openshift workflow
 * https://keithtenzer.com/2015/08/20/openshift-v3-unlocking-the-power-of-persistent-storage/
 * https://keithtenzer.com/2016/08/11/openshift-v3-basic-release-deployment-scenarios/

#### openshift user guide user management
 * https://docs.openshift.org/latest/architecture/additional_concepts/authentication.html
 * https://docs.openshift.org/latest/install_config/configuring_authentication.html#install-config-configuring-authentication
 * https://docs.openshift.org/latest/admin_guide/manage_scc.html

## enterprise applications
 * https://personifycorp.com/resources/blog/2015/5-characteristics-of-true-enterprise-applications/
 * 企业级软件特点 Multi-faceted integration多面集成 Cross-channel capabilities跨渠道能力 Mobility as a core feature核心功能支持移动 In-house or hosted service支持私有部署共有云部署 Superior IT support system强运维支撑能力


## 负载均衡 load balance
### Haproxy
 * http://www.oschina.net/translate/haproxy-ssl-termation-pass-through?cmp
### bamboo
 * https://github.com/QubitProducts/bamboo
 * http://www.open-open.com/lib/view/open1415511980137.html

### Nginx

### traefik
 * https://github.com/containous/traefik/
 * https://news.ycombinator.com/item?id=13572033
### envoy
 * https://github.com/lyft/envoy/
 * https://news.ycombinator.com/item?id=14194026
#### 比较
 * https://lyft.github.io/envoy/docs/intro/comparison.html#id7
#### serverless framework
 * https://github.com/SungardAS/spotinst-lambda rancher+spotinst
 * https://martinfowler.com/articles/serverless.html
 * https://www.slideshare.net/AmazonWebServices/getting-started-with-serverless-architectures microservice without servers https://www.slideshare.net/AmazonWebServices/getting-started-with-serverless-architectures-63429092?next_slideshow=1
 * https://en.wikipedia.org/wiki/Serverless_computing
 * https://github.com/showcases/serverless-architecture https://github.com/serverless/serverless
 * https://github.com/apex/apex Build, deploy, and manage AWS Lambda functions with ease (with Go support!)
 * https://www.slideshare.net/AlexCasalboni/serverless-machine-learning-on-aws-serverless-meetup-milano
 * http://containerjournal.com/2016/03/23/serverless-applications-future-microservices/
##### FaaS framework
 * https://news.ycombinator.com/item?id=13522541 比较  swarm FaaS https://github.com/alexellis/funker-dispatch/
 * https://github.com/funktionio/funktion https://funktion.fabric8.io/docs/#how-it-works  https://github.com/funktionio/funktion/blob/master/pkg/funktion/operator.go
 * https://github.com/fission/fission  k8s FaaS platform9 https://github.com/fission/fission/blob/master/Documentation/Architecture.md
 * https://github.com/openwhisk/openwhisk  https://github.com/openwhisk/openwhisk/blob/master/docs/reference.md Synchronous and asynchronous behavior blocking or non-blocking.
 * https://github.com/stackvana/microcule  100+ Working Service Examples https://github.com/stackvana/microcule-examples
 * https://github.com/Azure/Azure-Functions https://github.com/Azure/azure-webjobs-sdk-script/
 * https://github.com/serverless/examples serverless examples https://blog.fugue.co/2016-05-05-architecting-a-serverless-web-application-in-aws.html
 * https://github.com/serverless/serverless/issues/3268
#### serverless data pipeline
 * https://aws.amazon.com/cn/blogs/compute/ad-hoc-big-data-processing-made-simple-with-serverless-mapreduce/
 * https://cloudonaut.io/serverless-big-data-pipeline-on-aws/
 * https://conferences.oreilly.com/strata/strata-ca/public/schedule/detail/58995 https://www.techinasia.com/talk/serverless-big-data-pipeline-startup
 * https://cloud.google.com/blog/big-data/2017/02/adding-machine-learning-to-a-serverless-data-analysis-pipeline
 * https://dzone.com/articles/serverless-big-data-pipeline-on-aws https://www.thinkahead.com/blog/serverless-big-data-demo-using-small-data-aws/
 * http://docs.aws.amazon.com/zh_cn/lambda/latest/dg/vpc-rds-invoke-lambda-function.html aws user guide
```
when building a serverless Big Data pipeline:

    Maximum execution duration: 300 seconds
    Maximum memory: 1536 MB
    Ephemeral disk capacity: 512 MB

Real world example:
    Load CSV file from S3.
    Unzip data.
    Transform data.
    Zip data.
    Upload to S3.
```
#### dockerize
 * https://github.com/fiunchinho/dockerize-me
 * https://github.com/jwilder/dockerize jasonwilder.com/blog/2014/10/13/a-simple-way-to-dockerize-applications/
 * https://github.com/larsks/dockerize A tool for creating minimal docker images from dynamic ELF binaries
 *

# programming coding 编程
## algorithm 算法

### generic interface
#### file
file is the generic interface of binary data access
#### http
http is the generic interface internet resources
#### command line interface
command line is the generic interface of intention
#### sql
sql is the generic interface to access relational data
####
semantic and syntactic 语义的和语法的
semanctics 语义 syntax 语法 mechanism 机制
intentional programming 意图式编程
declarative programming  声明 imperative programming 命令式biancheng
Referential transparency 参照透明 deterministic 确定性的 rewriting systems (also known as rewrite systems, rewrite engines 重写系统
### graph 图
#### 图同构问题 GI complete problem
 * https://en.wikipedia.org/wiki/Graph_isomorphism_problem
 * 五角星和五边形
 * subgraph isomorphism problem,[3] which is known to be NP-complete
 * Subgraph isomorphism is a generalization of both the maximum clique problem and the problem of testing whether a graph contains a Hamiltonian cycle, and is therefore NP-complete.[1] However certain other cases of subgraph isomorphism may be solved in polynomial time
### dsl
 * https://anydsl.github.io/index.html
### CPS 继续传递形式
 * https://en.wikipedia.org/wiki/Continuation_passing_style
 * https://en.wikipedia.org/wiki/Continuation Programming language support
 * http://pypy.readthedocs.io/en/latest/stackless.html
 * https://blogs.msdn.microsoft.com/ericlippert/2005/08/08/recursion-part-four-continuation-passing-style/
#### continuation
 * http://community.schemewiki.org/?call-with-current-continuation
 * http://blog.sina.com.cn/s/blog_698213630101bj0q.html
 * http://blog.sina.com.cn/s/blog_4dff871201018wtz.html
 * https://en.wikipedia.org/wiki/Continuation
### Coroutine 协程
 * https://en.wikipedia.org/wiki/Coroutine#Implementations_for_Python
### Generator 生成器
 * https://en.wikipedia.org/wiki/Generator_(computer_programming)
### 生成器 Generators also known as semicoroutines,半xiecheng
### Simulated annealing 模拟退火算法
 * https://en.wikipedia.org/wiki/Simulated_annealing For problems where finding an approximate global optimum is more important than finding a precise local optimum in a fixed amount of time, simulated annealing may be preferable to alternatives such as gradient descent.
 * http://blog.csdn.net/xianlingmao/article/details/7798647 模拟退火算法
 * https://www.autodeskresearch.com/publications/samestats 图形转换
## programming teaching
### scratch 教小孩编程
 * https://scratch.mit.edu/
### Quine8 Q8 计算机底层演示
## trend
 * https://github.com/showcases/programming-languages

## c/c++
### online book
 * https://www.ossblog.org/master-c-programming-with-open-source-books/
 * https://devfreebooks.github.io/ free book
 * https://github.com/vhf/free-programming-books/blob/master/free-programming-books.md
### c++ 17
 * http://www.levelofindirection.com/journal/2016/12/28/c17-why-its-better-than-you-might-think.html
## coding styles
Shell style=
https://google.github.io/styleguide/shell.xml
Python style=
https://google.github.io/styleguide/pyguide.html
https://www.python.org/dev/peps/pep-0008/
https://wiki.openstack.org/wiki/Python3
Python reference
https://docs.python.org/2/library/copy.html
go style=
https://golang.org/doc/effective_go.html
https://github.com/golang/go/wiki/CodeReviewComments
Java style=
https://google.github.io/styleguide/javaguide.html
http://www.oracle.com/technetwork/java/javase/documentation/codeconvtoc-136057.html

## coding programming online test
 * http://www.pskills.org/cinterview.jsp

## data generator 数据生成
 * https://pypi.python.org/pypi/fake-factory
 * http://www.json-generator.com/
 * https://www.mockaroo.com/
 * http://www.generatedata.com/
 * http://c2.com/cgi/wiki?TestDataGenerator
### json在线处理工具
 *

## line  of code 代码统计
 * https://github.com/AlDanial/cloc
 * https://github.com/hotei/sloc
## nodejs
### web command line interface cli
 * https://www.sitepoint.com/javascript-command-line-interface-cli-node-js/
#### angularjs
 * https://github.com/toddmotto/angular-1-5-components-app
 * https://github.com/toddmotto/angular-styleguide
 * https://docs.angularjs.org/api/ng/directive/ngStyle 1.5
 * https://angular.io/docs/ts/latest/
 * http://blog.angular-university.io/introduction-to-angular2-the-main-goals/
 * https://angular.io/docs/ts/latest/guide/architecture.html angularjs 2 architecture
 * https://github.com/angular/quickstart angularjs sample 例子程序
 * http://www.typescriptlang.org/  typescript脚本语言 http://www.tslang.cn/
 * http://www.zhihu.com/question/21879449?sort=created
 * https://dzone.com/articles/typed-front-end-with-angular-2
 * https://www.airpair.com/js/javascript-framework-comparison 趋势比较 emberjs liangsheng演讲 https://medium.freecodecamp.com/angular-2-versus-react-there-will-be-blood-66595faafd51#.5xor5uejs
 * http://blog.backand.com/angular-2-vs-react/  有 angularjs 2 和 reactjs 例子
 * https://github.com/angular/angular
 * http://blog.yodersolutions.com/why-i-recommend-emberjs-over-angularjs/
 * https://www.quora.com/Is-Angular-js-or-Ember-js-the-better-choice-for-JavaScript-frameworks
 * http://singlepageappbook.com/goal.html 单页应用
 * https://en.wikipedia.org/wiki/Single-page_application
 * http://noeticforce.com/best-Javascript-frameworks-for-single-page-modern-web-applications
 * http://angularjs-emberjs-compare.bguiz.com/
#### angular 2 examples
 * https://github.com/mgechev/switching-to-angular2
 * https://github.com/mgechev/angular-seed#examples
 * https://tests4geeks.com/angular-2-tutorial/
 * https://github.com/thelgevold/angular-2-samples
 * https://github.com/angular/angular-cli  how to install angular 2
 * http://www.protractortest.org/#/ end-to-end testing for angular
#### angular 2 end 2 end testing
 * http://www.gistia.com/guide-end-end-testing-angular-2/
 * https://blog.jscrambler.com/getting-started-with-angular-2-end-to-end-testing/
 * https://github.com/alexpods/angular2-universal-starter
 * https://dzone.com/articles/getting-started-with-angular-2-end-to-end-testing
#### app generator
 * https://github.com/swagger-api/swagger-codegen/tree/master/samples/client/petstore/typescript-angular
 * https://jhipster.github.io/
 * https://github.com/yeoman/generator-angular
 * https://github.com/teerapap/generator-go-angular not active
 * http://stackoverflow.com/questions/29649578/available-yeoman-generator-for-angular-2
### redux
 * http://redux.js.org/docs/introduction/Examples.html
 * https://github.com/angular-redux/store
#### Web GUI recorder
 * https://github.com/tebelorg/TA.Gui
## Python
### 学习
 * http://www.jb51.net/article/33991.htm
 * http://docs.python.org/tutorial/index.html
 * http://www.pythonchallenge.com/
### list comprehesions 列表解析和生成器表达式
 * http://www.jb51.net/article/26520.htm
### developing tool WebStorm
 * http://idea.lanyus.com/
### numpy
 * http://www.labri.fr/perso/nrougier/from-python-to-numpy/#id53
 * http://old.sebug.net/paper/books/scipydoc/numpy_intro.html
### lambdascript
 * https://github.com/baruchel/lambdascript
### pypy
#### Application-level Stackless features
 * http://pypy.readthedocs.io/en/latest/stackless.html


### pip 安装
安装不了可以将python2.7目录允许访问。安装openstackclient后可以访问openstack服务

## Go golang
### go is not good
 * https://github.com/ksimka/go-is-not-good
 * http://www.yinwang.org/blog-cn/2014/04/18/golang
### 学习
 * learn by example https://gobyexample.com/
 * https://tour.golang.org/basics/1
### go frameworks packages library
 * http://libs.club/golang/
 * http://gorevel.cn/docs/index.html
 * https://github.com/gorilla/handlers
 * http://goa.design/design/
### goadesign
 * https://blog.gopheracademy.com/advent-2015/goaUntanglingMicroservices/
 * https://www.infoq.com/news/2015/12/goa-microservice-framework
#### error handling
 * https://davidnix.io/post/error-handling-in-go/
 * https://blog.golang.org/errors-are-values
### go string literals string template 字符串
 * https://golang.org/ref/spec#String_literals
### go with dll
 * http://stackoverflow.com/questions/19431296/building-and-linking-dynamically-from-a-go-binary
 * https://golang.org/cmd/cgo/#hdr-C_references_to_Go
#### problem
```
一定要import "C"
//export

```

### golang download 下载
 * https://golang.org/dl/
 * https://storage.googleapis.com/golang/go1.7.3.linux-amd64.tar.gz
 * https://storage.googleapis.com/golang/go1.7.3.darwin-amd64.pkg

### golang idea 安装
 * https://github.com/go-lang-plugin-org/go-lang-idea-plugin
 * https://www.jetbrains.com/help/idea/2016.2/managing-enterprise-plugin-repositories.html

### go pipeline
 * https://whiskybadger.io/post/introducing-go-pipeline/

## coding problems
### Python problems
 * http://www.toptal.com/python/interview-questions
 * https://segmentfault.com/a/1190000000618513

## programming paradigms 编程范式

https://en.wikipedia.org/wiki/Comparison_of_programming_paradigms
结构化编程
Structured programming
过程化编程; 过程式编程
Procedural programming
Procedural programming languages are also imperative languages, because they make explicit references to the state of the execution environment.
In logic programming, a program is a set of premises, and computation is performed by attempting to prove candidate theorems. From this point of view, logic programs are declarative, focusing on what the problem is, rather than on how to solve it.
Functional
函数式编程
命令式编程
Imperative
Event-driven including time driven 事件驱动式编程
Object-oriented
面向对象编程
Declarative
声明式编程
logic paradigm
逻辑式编程
## haskell functional programming
 * http://blog.csdn.net/on_1y/article/details/8572673#sec-1
 * https://en.wikipedia.org/wiki/Monad_%28functional_programming%29
 * http://stackoverflow.com/questions/18808258/what-does-the-just-syntax-mean-in-haskell
 * http://www.staff.city.ac.uk/~ross/papers/FingerTree.html functional tree
## java
### maven
 * docker 安装 https://github.com/carlossg/docker-maven/blob/8ab542b907e69c5269942bcc0915d8dffcc7e9fa/jdk-8/Dockerfile

## html 网页
## CSS
  * http://www.114la.com/other/rgb.htm
  * http://tool.ganchang.cn/getcolortool.html

## rust language
### rust vs. C++
 * https://www.viva64.com/en/b/0324/  Criticizing the Rust Language, and Why C/C++ Will Never Die
 * https://www.quora.com/What-do-C-C++-systems-programmers-think-of-Rust
 * https://news.ycombinator.com/item?id=9329506 More Rust compared to C++
 * https://www.zhihu.com/question/27608498 Rust 和 C++ 有哪些优劣？
 * https://news.ycombinator.com/item?id=12744317 Long time C++ dev here(~15 years) currently loving Rust
 * http://stackoverflow.com/questions/37362640/why-does-rust-compile-a-simple-program-5-10-times-slower-than-gcc-clang
 * http://stackoverflow.com/questions/39186802/why-is-this-rust-program-so-slow-did-i-miss-something
### rust playground
 * https://play.rust-lang.org/
 * https://github.com/rust-lang/rust
 * https://github.com/rust-lang/cargo/
 * https://www.rust-lang.org/en-US/install.html
### rust by example
 * http://rustbyexample.com/
 * https://github.com/rust-lang/rust-by-example
 * https://github.com/PumpkinDB/PumpkinDB

## testing
 * https://github.com/mozilla/moztrap/  https://moztrap.mozilla.org/results/runs/?
 * https://github.com/lemonlatte/docker-moztrap https://hub.docker.com/r/lemonlatte/docker-moztrap/
 * https://github.com/Nitrate/Nitrate
 * https://github.com/prove/tarantula
 * https://github.com/TestLinkOpenSourceTRMS/testlink-code

# high performance computing HPC 高性能计算
 * http://www.admin-magazine.com/HPC/Articles/Singularity-A-Container-for-HPC 整体介绍
## shifter
 * https://www.nersc.gov/research-and-development/user-defined-images/ 通过将操作从共享存储移到节点提高性能
 * https://github.com/NERSC/shifter code
 * https://github.com/singularityware/singularity
 * http://www.nextplatform.com/2016/09/13/will-containers-total-package-hpc/ 科学计算 NAS要求高
 * http://singularity.lbl.gov/faq#how-does-singularity-relatediffer-from-shifter 可导入docker镜像
 * http://thenewstack.io/univa-augments-kubernetes-supercomputer-scheduling-technology/
 * http://www.navops.io/command.html  navops commands for kubernetes
## Ubercloud
 * https://www.theubercloud.com/experiments/
## MPI https://www.open-mpi.org/ 当前开源HPC
 * https://en.wikipedia.org/wiki/Open_MPI
 * https://github.com/open-mpi

### testing
#### java maen
 * https://github.com/ligado/hello-world-servlet/tree/master/src/main/docker
