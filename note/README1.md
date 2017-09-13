# cloud
## docker swarm
### portainer Simple management UI for Docker
 * https://github.com/portainer/portainer
### federated swarm
 * https://medium.com/on-docker/federated-clusters-with-docker-swarm-dce5516ecc8d
 * https://docs.docker.com/engine/swarm/how-swarm-mode-works/services/ swarm architecture
 * https://success.docker.com/Architecture/Docker_Reference_Architecture%3A_Docker_EE_Best_Practices_and_Design_Considerations
### docker swarm scheduling
 * https://www.slideshare.net/AtharvaChauthaiwale/docker-swarm-scheduling-in-112
## docker maven plugin
 * https://github.com/spotify/docker-client/
 * https://github.com/spotify/dockerfile-maven
 * https://github.com/fabric8io/docker-maven-plugin
 *  https://github.com/fabric8io/docker-maven-plugin/blob/master/src/main/java/io/fabric8/maven/docker/access/hc/DockerAccessWithHcClient.java
## docker gradle plugin
 * https://github.com/bmuschko/gradle-docker-plugin
## docker sprint cloud
 * https://spring.io/guides/gs/spring-boot-docker/
 * https://github.com/spring-projects/spring-boot https://github.com/dsyer/gs-spring-boot-docker https://github.com/spring-projects/spring-boot https://github.com/spring-projects/spring-petclinic/
### docker network
 * https://forums.docker.com/t/multiple-host-ips-to-docker-container/3371/2 port mapping
 * https://docs.docker.com/engine/reference/commandline/network/
 * https://github.com/docker/libnetwork/tree/master/drivers
### cni containernetworking
 * https://github.com/containernetworking/cni
 * https://github.com/containernetworking/plugins/tree/master/plugins/main/ipvlan
### macvlan ipvlan
 * https://hicu.be/macvlan-vs-ipvlan http://www.pocketnix.org/posts/Linux%20Networking:%20MAC%20VLANs%20and%20Virtual%20Ethernets
### docker and moby
 * http://mobyproject.org/#moby-and-docker
 * https://blog.docker.com/2017/05/get-involved-moby-project-attending-upcoming-moby-summits/
### docker compose example
 * https://github.com/dockersamples
 * https://github.com/gravityrail/wordpress-docker-compose-example
 * https://github.com/docker/libcompose
## Kubernetes  k8s
### ansible Kubernetes
 * https://github.com/kubernetes/contrib/tree/master/ansible/vagrant
 * https://github.com/ansible/ansible-kubernetes-modules
### kubernetes code
#### start container
```
kubelet/kuberuntime/kuberuntime_container.go#startContainer->kubelet/dockershim/docker_container.go
->docker/engine-api/types#ContainerCreateConfig
可以在docker_container.go#CreateContainer 和dockershim/helpers_linux.go#updateCreateConfig处添加代码扩展功能
docker/daemon/create.go->处添加代码扩展功能
```
##### docker REST API
```
Engine API v1.24 对应 docker 1.12.3 https://docs.docker.com/engine/api/v1.24/
Engine API v1.27 docker 17.03.1-ce
```
##### HTTP REST API Interceptor
 * https://blog.paw.cloud/tools-for-restful-api/ https://www.packtpub.com/books/content/debugging-rest-web-services
### kubernetes playground
 * https://www.katacoda.com/
 * https://kubernetes.io/docs/tasks/administer-cluster/memory-default-namespace/
 * https://www.katacoda.com/courses/kubernetes/playground
 * http://labs.play-with-k8s.com/
### kubernetes events
 * https://github.com/kayrus/elk-kubernetes This repo shows how to configure complete EFK stack on top of Kubernetes
 * https://github.com/kayrus/elk-kubernetes/blob/master/k8s-events-printer.yaml store events to elasticsearch
 * https://github.com/kubernetes/kubernetes/issues/4432 Consider moving events out of etcd
 * https://stackoverflow.com/questions/36345413/timeline-of-kubernetes-events Timeline of kubernetes events
 * Kubelet will perform garbage collection for containers every minute and garbage collection for images every five minutes.
 * https://github.com/kayrus/elk-kubernetes#forward-kubernetes-events-into-kibanaelasticsearch
 * https://github.com/caicloud/event_exporter Kuberentes events to Prometheus bridge
 * https://github.com/kayrus/prometheus-kubernetes
 * https://github.com/PerfectMemory/openshift-prometheus  good kube openshift prometheus example
 * involve hawkualr https://github.com/akram/openshift-prometheus-grafana/blob/master/grafana-metrics-full-template.yaml https://github.com/akram/openshift-prometheus-grafana/blob/master/grafana-metrics-full-template.yaml
 * https://github.com/kayrus/elk-kubernetes#forward-kubernetes-events-into-kibanaelasticsearch
#### elasticsearch archive
 * https://www.elastic.co/blog/curator-tending-your-time-series-indices
 * https://www.elastic.co/guide/en/elasticsearch/guide/current/retiring-data.html
### kubernetes trends
 * https://groups.google.com/forum/#!search/redis$203.0$20kubernetes/kubernetes-users/JqvIuUmt5fk/OYjZrWtKCgAJ
 * https://www.nextplatform.com/2016/11/08/google-wants-kubernetes-rule-world/
 * we look at product maturity, enterprise adoption, and community strength. And in all of these areas, Kubernetes significantly outshines
 * https://www.nextplatform.com/2017/02/01/riding-coattails-google-kubernetes-aws-lambda/  coattails 燕尾
### kubernetes sponsors
 * https://github.com/dchen1107 https://github.com/lavalamp https://github.com/smarterclayton https://github.com/thockin
### docker sponsors
 * https://github.com/jpetazzo
## kubernetes advertise
 * http://www.stratoscale.com/blog/kubernetes/container-orchestration-kubernetes-12-key-features/
### big data on kubernetes
### 动态设置docker 和kubelet
 * https://github.com/kubernetes/kubernetes/issues/27980
### kubernetes kubelet
```
kubelet syncLoop->syncLoopIteration resyncInterval:                 kubeCfg.SyncFrequency.Duration,
```
### aggregated api servers
 * https://groups.google.com/forum/#!msg/kubernetes-sig-apps/0gbmMNvZWUo/fgYSHNoWCQAJ
 * https://www.slideshare.net/sttts/extend-and-build-on-kubernetes
 * https://github.com/kubernetes/community/blob/master/sig-api-machinery/api-extensions-position-statement.md#q-should-kube-aggregator-be-a-separate-binaryprocess-than-kube-apiserver
 * https://github.com/kubernetes/community/blob/master/contributors/design-proposals/aggregated-api-servers.md
 * https://github.com/kubernetes/kube-aggregator
 * https://github.com/kubernetes/sample-apiserver
 * https://kubernetes.io/docs/tasks/access-kubernetes-api/extend-api-third-party-resource/
#### Tool to build an extended API server
 * https://github.com/kubernetes-incubator/apiserver-builder/blob/master/docs/concepts/aggregation.md
```
curl --cacert /tmp/the-ca.crt --cert /path/to/proxy-client.crt --key /path/to/proxy-client.key \
  --resolve <service>.<namespace>.svc:443:<clusterIP> -v \
  https://<service>.<namespace>.svc/apis/wardle/v1alpha1/namespaces/default/flunders/theflundinator
Test API server with curl
```
 * https://github.com/Kubernetes-incubator/apiserver-builder/blob/master/README.md tool to generate API server
### bosh release of kubernetes
### kubernetes authentication openid connect
 * https://kubernetes.io/docs/admin/authentication/#openid-connect-tokens
 * http://www.devoperandi.com/kubernetes-authentication-openid-connect/
#### spark on kubernetesspark
 * http://rootsongjc.github.io/projects/yarn-on-docker/ talking data spark solution
 * https://github.com/mattf/openshift-spark/blob/master/Makefile 简单的spark demo
 * 演示案例 https://github.com/nicolaferraro/voxxed-bigdata-spark  https://hub.docker.com/r/radanalyticsio/openshift-spark/
 * https://www.slideshare.net/nicolaferraro/extending-devops-to-big-data-applications-with-kubernetes
 * https://github.com/radanalyticsio/openshift-spark https://github.com/radanalyticsio/oshinko-webui
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
#### spark use cases
 * https://rstudio-pubs-static.s3.amazonaws.com/190581_5edd87c937f2489c86c1b9b567a62b6e.html Predicting the NBA Playoffs with Machine Learning

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
 * API design guide
 * https://cloud.google.com/apis/design/resources
 * https://github.com/archnotes/gitbook/tree/master/API-design-guide
 * https://groups.google.com/forum/#!forum/kubernetes-users k8s users
 * http://semver.org/ Semantic Versioning 2.0.0
 * learn kubernetes links
  * https://github.com/kubernetes/kubernetes/blob/master/CHANGELOG.md/#v130
  * http://kubernetes.io/docs/user-guide/petset/
  * https://github.com/kubernetes/kubernetes/tree/master/docs/design
  * http://kubernetes.io/docs/user-guide/petset/bootstrapping/
  * https://github.com/openshift/training deprecated openshift training
* https://github.com/kubernetes/kubernetes/issues/1201  kubernetes   的annotation和label区别
* https://github.com/kubernetes/kubernetes/issues/341  kubernetes 的label为什么不支持模糊匹配
* https://github.com/kubernetes/kubernetes/issues/1348 label反向匹配
* https://github.com/kubernetes/kubernetes/issues/4817 Efficient lookup by label selection, reverse label selection, uid, and IP addresses
* https://github.com/kubernetes/kubernetes/issues/22262 schedule slow
#### Reconciliation Loop 调和循环
 * http://freecontent.manning.com/kubernetes-in-action-introducing-replication-controllers/
 * https://www.slideshare.net/SatnamSingh67/2015-0605-cluster-management-with-kubernetes keep scheduler simple

#### kubernetes network
 * https://kubernetes.io/docs/concepts/cluster-administration/addons/
 * https://github.com/Huawei-PaaS/CNI-Genie
##### docker infiniband
 * https://www.slideshare.net/syoyo/docker-infiniband
 * https://github.com/jumanjihouse/docker-infiniband
 * https://serverfault.com/questions/638710/passing-through-rdma-network-devices-to-docker-containers
 * https://en.wikipedia.org/wiki/List_of_device_bit_rates
 * https://en.wikipedia.org/wiki/RDMA_over_Converged_Ethernet The RoCE protocol allows lower latencies than its predecessor, the iWARP protocol
 * https://www.mellanox.com/solutions/machine-learning/ Baidu, Facebook, JD.com, NVIDIA, PayPal, Tencent, Yahoo deeplearning
 * https://www.mellanox.com/solutions/machine-learning/tensorflow.php
 * https://community.mellanox.com/docs/DOC-2852 Reference Deployment Guide for RDMA accelerated TensorFlow with an NVIDIA GPU Card over 100Gb Infiniband Network
 * https://github.com/tensorflow/tensorflow/tree/master/tensorflow/contrib/verbs How to compile and use RDMA-enabled TensorFlow
 * https://github.com/CGCL-codes/Tensorflow-RDMA which can get about 4.5x speedup on two nodes comparing with TCP/IP.
 * https://yahoo.tumblr.com/post/157196637189/open-sourcing-tensorflowonspark-distributed-deep python TensorFlow with RDMA
 * http://hpcadvisorycouncil.com/events/2016/china-conference/wp-content/uploads/2016/09/12_Tong_RDMA_Competition_Ceremony.pdf
 * https://github.com/zrlio High-performance IO Research Group at IBM Research Lab, Zurich
 * https://github.com/accelio/accelio RPC  
 * http://www.globalcis.org/jcis/ppl/04%20JCISVol2No2_part3.pdf a chinese paper
 * https://www.systutorials.com/docs/linux/man/7-rsocket/ linux rsocket
 * https://github.com/ofiwg/librdmacm/blob/master/docs/rsocket
#### RDMA on OpenStack
 * https://wiki.openstack.org/wiki/Mellanox-Cinder
 * https://wiki.openstack.org/wiki/Mellanox-OpenStack
 * https://www.youtube.com/watch?v=FzD87qSJee0
#### IBM Cloud private
 * https://www.ibm.com/developerworks/community/wikis/home?lang=en#!/wiki/W1559b1be149d_43b0_881e_9783f38faaff
 * https://www.ibm.com/blogs/bluemix/2017/06/ibm-announces-kubernetes-base-ibm-cloud-private-platform/
 * https://github.com/IBM/charts https://www.ibm.com/developerworks/community/groups/service/html/communityoverview?communityUuid=fe25b4ef-ea6a-4d86-a629-6f87ccf4649e
 * https://www.ibm.com/support/knowledgecenter/SSBS6K_1.2.0/getting_started/whats_new.html
 * https://stackoverflow.com/questions/33098306/java-sockets-on-rdma-jsor-vs-jverbs-performance-in-infiniband
 * https://news.ycombinator.com/item?id=9726185 	How to receive a million packets per second
##### openshift ingress
 * https://playbooks-rhtconsulting.rhcloud.com/playbooks/operationalizing/ingress.html#configuring-the-service-to-be-highly-available
 * https://access.redhat.com/documentation/en-us/openshift_container_platform/3.5/html/cluster_administration/admin-guide-unique-external-ips-ingress-traffic
 * https://docs.openshift.com/container-platform/3.3/admin_guide/tcp_ingress_external_ports.html#unique-external-ips-ingress-traffic-configure-service
 * https://docs.openshift.com/container-platform/3.3/dev_guide/getting_traffic_into_cluster.html
 * openshift/origin/pkg/service/controller/ingressip/service_ingressip_controller.go
##### kubernetes network traffic control
 * https://ci.openshift.redhat.com/releases_overview.html 3.7
 * https://bugzilla.redhat.com/show_bug.cgi?id=1258296
 * https://github.com/kubernetes/kubernetes/pull/12187 Add resource types for ingress and egress bandwidth
 * https://cloudnativeeu2017.sched.com/event/9Tc5/schednet-a-network-aware-kubernetes-scheduler-i-akash-gangil-salvatore-orlando-vmware
 * https://kubernetes.io/docs/api-reference/v1.6/#networkpolicypeer-v1beta1-extensions
 * https://github.com/weaveworks-plugins/scope-traffic-control
 * https://github.com/kinvolk/tcd https://kinvolk.io/blog/2016/05/testing-web-services-with-traffic-control-on-kubernetes/
#### 动态分配存储 provisioner
 * https://github.com/kubernetes/community/blob/master/contributors/design-proposals/local-storage-overview.md local strorage
 * https://github.com/kubernetes/kubernetes/issues/7562#issuecomment-281469904
 * https://github.com/kubernetes/kubernetes/blob/962d51ec682a14ef2d926175bbc614bac69f3197/pkg/controller/volume/persistentvolume/controller.go
 * https://github.com/kubernetes/kubernetes/blob/88c977c34ac9c0edc8b6be8034b2d5b47a5735e2/pkg/volume/glusterfs/glusterfs.go
 * https://azure.microsoft.com/en-us/documentation/articles/storage-dotnet-how-to-use-files/
 * https://azure.microsoft.com/en-us/pricing/details/storage/
#### kubernetes DAG kubernetes workflow
 * https://github.com/sdminonne/workflow-controller/tree/master/examples/two_steps
 * https://github.com/kubernetes/kubernetes/pull/18827
#### cloudnativelabs
 * https://github.com/cloudnativelabs/kube-shell
 * https://hub.docker.com/r/cloudnativelabs/kube-router/
 * https://blog.codeship.com/kernel-load-balancing-for-docker-containers-using-ipvs/
##### ipvs lvs load-balancing
 * http://www.austintek.com/LVS/LVS-HOWTO/HOWTO/LVS-HOWTO.performance.html
 * http://www.austintek.com/LVS/LVS-HOWTO/HOWTO/LVS-HOWTO.LVS-NAT.html#one_network
##### nftables
 * https://en.wikipedia.org/wiki/Nftables nftables is intended to replace Netfilter
 * https://www.zevenet.com/blog/nftables-load-balancing-10x-faster-lvs/
 * https://www.slideshare.net/azilian/nftables-the-evolution-of-linux-firewall
#### kubernetes paas
 * https://medium.com/@shijuvar/the-evolution-of-cloud-paas-to-container-ecosystem-1943a335c25b#.7gwiv5dc9
 * http://kubernetes.io/docs/whatisk8s/
 * https://cloudnativelabs.github.io/post/2017-05-10-kube-network-service-proxy/ https://github.com/kubernetes/kubernetes/blob/master/docs/whatisk8s.md#why-do-i-need-kubernetes-and-what-can-it-do
 * https://www.ctl.io/developers/blog/post/what-is-kubernetes-and-how-to-use-it/
 * https://www.sdxcentral.com/articles/news/why-docker-and-google-kubernetes-are-like-paas-done-right/2015/08/
#### kubernetes configmap
 * http://stackoverflow.com/questions/36187624/kubernetes-configmap-volume-doesnt-create-file-in-container
 * https://github.com/kubernetes/kubernetes/issues/22368 Facilitate ConfigMap rollouts / management
 * https://github.com/eBay/Kubernetes/blob/master/docs/proposals/configmap.md
 * https://kubernetes.io/docs/tasks/configure-pod-container/configmap/
##### confd and kubernetes configmap
 * https://github.com/kubernetes/kubernetes/issues/30716 proposal
 * https://github.com/kubernetes/kubernetes/issues/2068 https://github.com/kubernetes/kubernetes/issues/831 related proposal
 * https://github.com/kubernetes/kubernetes/issues/29607 issue triggering proposal
 * https://github.com/kelseyhightower/confd confd github
 * https://github.com/micro-webapps/kubernetes-confd/blob/master/kubernetes-confd shell integration
 * https://www.digitalocean.com/community/tutorials/how-to-use-confd-and-etcd-to-dynamically-reconfigure-services-in-coreos confd example https://github.com/kubernetes/charts/tree/master/stable/datadog/templates
 * http://www.mricho.com/confd-and-docker-separating-config-and-code-for-containers/ install confd in a docker image
##### configmap errors
```
MountVolume.SetUp failed for volume ..... with: references non-existent config key
ConfigMap中的key,如果匹配不上很可能使用configmap对应的整个目录
```
#### kubernetes template
 * https://github.com/InQuicker/ktmpl
 * https://github.com/mustache/mustache
 * go template http://studygolang.com/articles/1833
#### kubernetes quick start
 * http://kubernetes.io/docs/getting-started-guides/ubuntu/
 * http://kubernetes.io/docs/getting-started-guides/azure/
 * http://thenewstack.io/tutorial-configuring-ultimate-development-environment-kubernetes/
#### kubernetes python client
##### ssl io error
 * http://stackoverflow.com/questions/38670295/homebrew-refusing-to-link-openssl
 * http://stackoverflow.com/questions/34386527/symbol-not-found-pycodecinfo-getincrementaldecoder
 * https://github.com/kelproject/pykube/issues/80
### kubernetes CPU bind and NUMA  Non-uniform memory access
 * https://en.wikipedia.org/wiki/Non-uniform_memory_access
 * Version 3.8 of the Linux kernel brought a new NUMA foundation that allowed development of more efficient NUMA policies in later kernel releases Java 7 added support for NUMA-aware
 * https://news.ycombinator.com/item?id=12459508 	NUMA-aware scheduler for Go
### kubernetes GPU
 * http://blog.clarifai.com/how-to-scale-your-gpu-cloud-infrastructure-with-kubernetes/#.WTUCUcklFE4
#### kubernetes API watch cache
 * apiserver/pkg/storage/cacher.go apiserver/pkg/registry/generic/registry/storage_factory.go apiserver/pkg/registry/generic/storage_decorator.go
#### openshift devops
##### DevOps learning resources
 * https://news.ycombinator.com/item?id=14652993 DevOps learning resources
##### diagnostics
##### e2e testing
##### node problem detector
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
 * https://kubernetes.io/docs/admin/authorization/rbac/  Permissive RBAC Permissions Privilege Escalation Prevention and Bootstrapping
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
#### federation RBAC
 * https://github.com/kubernetes/kubernetes/issues/43433
 * https://docs.google.com/document/d/1O2SEr_TDtgXzndh5lHPuAZmT-haylB9NaBRSo4DsUdk/edit#heading=h.chxbd5h0cu1x
#### container security landscape
##### Aqua Container Security
 * http://blog.aquasec.com/topic/vault
 * Continuous Image Assurance Runtime Protection Docker Security Network Nano-Segmentation User Access Control Auditing & Compliance
 * Secrets Management Integrated with HashiCorp Vault
##### Vulnerability Static Analysis for Containers
 * https://github.com/coreos/clair
 * https://coreos.com/blog/celebrating-clair2.0
##### Notary
 * Notary is a Docker project that allows anyone to have trust over arbitrary collections
 * https://github.com/docker/notary
##### Twistlock
 * https://www.twistlock.com/2017/07/06/ultimate-guide-container-security/
 * https://www.twistlock.com/products/enterprise-container-security/
##### NeuVector
 * https://neuvector.com/products/
#### openshift federation
 * https://bugzilla.redhat.com/show_bug.cgi?id=1470046 trello task
 * https://blog.openshift.com/looking-ahead-to-2017/ https://lists.openshift.redhat.com/openshift-archives/users/2017-April/msg00087.html
#### Ubernetes Lite  single cluster across multiple data centers
 * https://kubernetes.io/docs/admin/multiple-zones/
 * https://stackoverflow.com/questions/34194602/single-kubernetes-openshift-cluster-instance-across-datacenters
 * https://serverfault.com/questions/742063/single-kubernetes-openshift-cluster-instance-across-datacenters
 * https://lists.openshift.redhat.com/openshift-archives/dev/2015-December/msg00023.html
 * https://lists.openshift.redhat.com/openshift-archives/dev/2015-December/msg00021.html  
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
#### docker debug
```
docker run -ti -v /bin/sh:/hostbin/sh --entrypoint /hostbin/sh openshift/origin-haproxy-router:v3.6.0
```
docker run -ti --entrypoint /bin/sh openshift/origin-haproxy-router:v3.6.0
curl -u admin:0ZBELXFCFe http://10.0.2.15:1936/metrics
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
#### kubeadm
 * https://medium.com/@SystemMining/setup-kubenetes-cluster-on-ubuntu-16-04-with-kubeadm-336f4061d929
#### 下载kubectl
 * https://storage.googleapis.com/kubernetes-release/release/v1.3.0/bin/darwin/amd64/kubectl
#### monokube
 * https://github.com/polvi/monokube 全部打包到一个二进制文件
### vertical scale up
 * https://docs.docker.com/engine/reference/commandline/update/#update-a-containers-kernel-memory-constraints  https://stackoverflow.com/questions/34654697/update-the-limitation-of-memory-cpu-for-existing-container-in-docker
 * https://github.com/kubernetes/kubernetes/issues/42752 Workload API v1 requirements umbrella issue
 * https://github.com/kubernetes/kubernetes/issues/39060#issuecomment-268449812
 * https://github.com/kubernetes/kubernetes/issues/9043 In-place rolling updates  https://github.com/kubernetes/kubernetes/issues/39060#issuecomment-268449812
 * https://github.com/kubernetes/kubernetes/issues/28706  Pet set upgrades
 * https://github.com/kubernetes/kubernetes/issues/5774 Support pod resource updates
 * https://dzone.com/articles/truth-about-paas-vertical
 * https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/
#### minikube build
 * https://github.com/boot2docker/boot2docker boot2docker build
 * https://github.com/minishift/minishift-b2d-iso/blob/master/Makefile minishift-b2d build
 * https://github.com/minishift/minishift-centos-iso centos iso build
 *
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
 * https://github.com/upmc-enterprises/kubernetes-secret-manager
 * https://github.com/Boostport/kubernetes-vault
 * https://github.com/hashicorp/vault
 * https://www.hashicorp.com/blog/vault.html
 * https://www.vaultproject.io/
 * https://github.com/upmc-enterprises/kubernetes-secret-manager  集成的代码
 * http://www.devoperandi.com/vault-in-kubernetes-take-2/ 在k8s中使用Vault
 * https://github.com/kubernetes/kubernetes/issues/10439 讨论集成 Vault的issue
 * https://www.digitalocean.com/company/blog/vault-and-kubernetes/ 通过Vault集成CA
#### Rescheduler  
 * https://github.com/kubernetes/kubernetes/blob/master/cluster/saltbase/salt/rescheduler/rescheduler.manifest
 * https://kubernetes.io/docs/tasks/administer-cluster/guaranteed-scheduling-critical-addon-pods/
##### basic bash scheduler
 * http://blog.kubernetes.io/2017/03/advanced-scheduling-in-kubernetes.html
 * https://github.com/rothgar/bashScheduler
 * https://github.com/philipn/kubernetes-sticky-node-scheduler/blob/master/scheduler.py a python scheduler

#### kubernetes helm
##### eroor Error building Helm: "hg is not installed"
 * https://github.com/kubernetes/helm/issues/2343
 * https://github.com/kubernetes/helm/pull/2344
```
install https://github.com/kubernetes/helm/pull/2344
```
#### service catalog
 * https://docs.openshift.com/container-platform/3.6/architecture/service_catalog/index.html
 * origin/pkg/template/servicebroker/provision.go
 * https://github.com/kubernetes-incubator/service-catalog/wiki/Roadmap
 * https://github.com/kubernetes-incubator/service-catalog/blob/master/docs/v1/use-cases.md
#### awesome kubernetes
 * https://github.com/ramitsurana/awesome-kubernetes#operators
#### 扩展kubernetes API
 * https://github.com/kubernetes-incubator/service-catalog/wiki/Roadmap
 * https://github.com/kubernetes/features https://github.com/kubernetes/features/blob/master/OWNERS
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
#### kubernetes etcd
 * https://coreos.com/blog/migrating-applications-etcd-v3.html
 * https://coreos.com/etcd/docs/latest/getting-started-with-etcd.html
 * https://www.digitalocean.com/community/tutorials/how-to-use-etcdctl-and-etcd-coreos-s-distributed-key-value-store
 * https://github.com/coreos/etcd/blob/master/Documentation/rfc/v3api.md
 * https://coreos.com/blog/migrating-applications-etcd-v3.html
#### kubernetes resource quota
#### Opaque Integer Resources to a Container
 * https://kubernetes.io/docs/tasks/administer-cluster/opaque-integer-resource-node/
 * https://kubernetes.io/docs/tasks/configure-pod-container/opaque-integer-resource/
#### Configure Quality of Service for Pods
 * https://kubernetes.io/docs/tasks/configure-pod-container/quality-service-pod/
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
#### redis template
##### redis commands
 * https://redis.io/commands
 *
##### redis cluster
 * https://github.com/sobotklp/kubernetes-redis-cluster
##### redis GUI web UI
 * http://fastoredis.com/download.html  desktop manager
 * modern https://hub.docker.com/r/faktiva/php-redis-admin/ https://github.com/faktiva/php-redis-adminhttps://github.com/erikdubbelboer/phpRedisAdmin  have dockerfile
 * https://github.com/steelThread/redmon
 * https://redislabs.com/blog/so-youre-looking-for-the-redis-gui/
 * https://stackoverflow.com/questions/7716446/redis-administration-panel
##### awesome redis
 * https://github.com/JamzyWang/awesome-redis
 * https://github.com/junegunn/redis-stat active
 * https://github.com/nkrode/RedisLive/graphs/contributors  inactive
 * https://github.com/no13bus/redispapa simple
 * https://github.com/facebookarchive/redis-faina command line analysis
##### redis cluster Web UI
 * https://github.com/HunanTV/redis-ctl https://github.com/sunyi00/centos-redis-ctl
 * https://github.com/zhengfc/redis-cluster-monitor     (simple CLI monitor) https://hub.docker.com/r/tuananhpham/redis-cluster-monitor/
##### redis sentinel
 * https://github.com/kelseyhightower/kubernetes-redis-cluster
 * https://github.com/corybuecker/redis-stateful-set
 * https://github.com/CommercialTribe/kube-redis
 * https://github.com/bdimcheff/rediskube
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
##### Kafka and microservice
 * https://content.pivotal.io/blog/messaging-patterns-for-event-driven-microservices
 * https://content.pivotal.io/blog/understanding-when-to-use-rabbitmq-or-apache-kafka
 * https://tech.knewton.com/blog/2016/04/distributed-tracing-design-architecture/ rpc and kafka tracing
 * https://dzone.com/articles/exploring-message-brokers
#### message queue tracing
 * https://github.com/spring-cloud/spring-cloud-sleuth
 * https://github.com/Laures/demo-spring-sleuth-zipkin
 * https://github.com/openzipkin/zipkin/issues/1614 RabbitMQ transport/collector support
 * https://github.com/openzipkin/zipkin/tree/master/zipkin-collector
 * http://ryanjbaxter.com/cloud/spring%20cloud/spring/2016/07/07/spring-cloud-sleuth.html
#### tracing
 * https://github.com/jaegertracing/jaeger-kubernetes
 * https://github.com/uber/jaeger/blob/master/CONTRIBUTING.md
#### monitoring logging and tracing
 * https://www.slideshare.net/MartinEtmajer/challenges-in-a-microservices-age-monitoring-logging-and-tracing-on-red-hat-openshift
 *
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
  https://github.com/kubernetes/kubernetes/blob/2f756e4ebc677c824d495bb5e10aa9d2234de686/plugin/pkg/scheduler/generic_scheduler.go scheduler 基础
 * https://github.com/kubernetes/kubernetes/blob/2f756e4ebc677c824d495bb5e10aa9d2234de686/plugin/cmd/kube-scheduler/app/server.go 创建scheduler 的地方
#### hilbert space-filling curve
 * https://pdfs.semanticscholar.org/237b/eb5636b4337398dc12ef460f9ec15b1b216c.pdf
 * https://en.wikipedia.org/wiki/Hilbert_curve_scheduling
##### fractal 分形
```
one of the essential features of a fractal is that its Hausdorff dimension 维数 strictly exceeds its topological dimension.
豪斯多夫（Felix Hausdorff ）拓扑学的开创者
fractal dimension主要描述分形最主要的参量。简称分维
直线基于平面是4维、直线基于体是6维、平面基于体是9维 topological dimension拓扑维度
```
##### Hilbert curve
 * https://en.wikipedia.org/wiki/Hilbert_curve
 * https://en.wikipedia.org/wiki/Z-order_curve 亨利·勒贝格 Lebesgue curve
 * https://en.wikipedia.org/wiki/Hilbert_R-tree
 * https://en.wikipedia.org/wiki/List_of_fractals_by_Hausdorff_dimension
```
 Hilbert curve has been suggested as it has a better order-preserving behaviour, but here the calculations are much more complicated
 Dynamic Hilbert R-trees The dynamic Hilbert R-tree is suitable for dynamic databases where insertions, deletions, or updates may occur in real time
```
##### code library
 * https://github.com/google/hilbert
 * https://github.com/samuel/go-spacecurves
### kubernetes labels
#### built-in node labels
 * https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#nodeselector
### virtual machine in kubernetes
 * https://github.com/kubevirt/kubevirt
### kubernetes 1.6
 * https://github.com/kubernetes/community/blob/master/contributors/design-proposals/taint-toleration-dedicated.md
 * https://github.com/kubernetes/kubernetes/issues/1574 forgiveness
 * https://github.com/kubernetes/features/issues/117
 * https://github.com/kubernetes/features/issues/118
### monitor
#### hawkular
 * http://www.hawkular.org/blog/2017/01/17/obst-hosa.html
 * http://www.hawkular.org/blog/2016/10/24/hawkular-metrics-openshift-and-grafana.html Setup Hawkular Datasource in Grafana
### Xeon Phi intel mic
 * https://software.intel.com/en-us/forums/intel-many-integrated-core/topic/597934  Running Xeon Phi using dockers
 * https://github.com/intel/caffe Intel Xeon Phi processor  docker
 * http://www.univa.com/about/news/press_2016/06202016.php  Xeon Phi Docker containers
 * https://en.wikipedia.org/wiki/Xeon_Phi  http://www.devoperandi.com/kubernetes-not-just-cpu-and-ram-opaque-integer-resources/
#### HPC docker
 * http://insidehpc.com/tag/docker/ workflow for building and testing Docker containers and their deployment on an HPC system using Shifter
 * http://insidehpc.com/2017/02/video-singularity-containers-science-reproducibility-hpc/
### pachyderm (大家伙) dockerized data platform big data on kubernetes
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
 * https://www.karllhughes.com/posts/hyper-sh-weekend https://news.ycombinator.com/item?id=12891584 https://blog.hyper.sh/hyper-best-value.html
##### hyper openstack
 * https://www.openstack.org/videos/video/hyperhq-hyper-deploy-containers-in-seconds-to-cloud
 * hyper_ https://www.openstack.org/videos/video/hyperhq-hyper-deploy-containers-in-seconds-to-cloud Hyper_ provides a new container environment based on Hyper Container and OpenStack Neutron & Cinder, where the users can launch containers on an “infinite” daemon.
 * https://github.com/hyperhq/hypernova hyper for nova
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
#### WAS microservices WebSphere microservices
 * https://www.slideshare.net/davidcurrie/building-out-a-microservices-architecture-with-websphere-liberty-profile-and-netflix-open-source
 * https://www.ibm.com/developerworks/cloud/library/cl-bluemix-microservices-in-action-part-1-trs/index.html
 * https://developer.ibm.com/wasdev/docs/microservices/
#### weblogic microservices
 * https://www.slideshare.net/KellyGoetsch/microservices-oracle-a-bright-future
 * https://blogs.oracle.com/developers/getting-started-with-microservices-part-three
 * https://blogs.oracle.com/developers/getting-started-with-microservices-part-four good introduction for devOps
 * https://technology.amis.nl/2016/11/01/microservices-in-the-world-of-the-red-giant-report-from-oracle-openworld-2016/
#### design pattern
 * https://github.com/kamranahmedse/design-patterns-for-humans/blob/master/README.md#behavioral-design-patterns
 *
#### Object-relational mapping
 * https://en.wikipedia.org/wiki/List_of_object-relational_mapping_software
##### data mapping patterns
#####
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
 * http://blog.kubernetes.io/2017/05/managing-microservices-with-istio-service-mesh.html pretty figure
##### service mesh patterns
 * http://blog.christianposta.com/microservices/application-network-functions-with-esbs-api-management-and-now-service-mesh/   https://twitter.com/tef_ebooks/status/875888701246722048 https://istio.io/docs/concepts/
 * http://philcalcado.com/2017/08/03/pattern_service_mesh.html
 * http://web.mit.edu/Saltzer/www/publications/endtoend/endtoend.pdf
 * https://news.ycombinator.com/item?id=14410533  Google and IBM announce Istio – easily secure and manage microservices
 * https://www.getambassador.io/user-guide/with-istio.html
 * https://content.pivotal.io/blog/pivotal-and-istio-advancing-the-ecosystem-for-microservices-in-the-enterprise
 * http://redmonk.com/jgovernor/2017/05/31/so-what-even-is-a-service-mesh-hot-take-on-istio-and-linkerd/
##### service mesh and API gateways
 * https://www.slideshare.net/kasun04/service-meshes-the-landscape/1
 * https://www.slideshare.net/kasun04/bridging-microservices-apis-and-integration the new monolith API Gateway
##### new service integration programming language
 * https://github.com/ballerinalang/ballerina
 * https://dzone.com/articles/ballerinawhy-it-is-different-from-other-programmin
 * https://medium.com/coderscorner/mule-esb-vs-ballerina-language-concepts-e4bec4fdf9d1
 * https://dzone.com/articles/ballerina-dances-onto-the-integration-stage
 * https://github.com/Dwolla/open-source-developer-portal
##### linkerd vs istio
 * https://lyft.github.io/envoy/docs/intro/comparison.html
 * https://buoyant.io/2017/07/11/linkerd-istio/
 * https://medium.com/@jeffzzq/linkerd-vs-istio-my-2-1e16557891a6
 * https://abhishek-tiwari.com/post/a-sidecar-for-your-service-mesh
#### reliability patttern microservice design patterns
http://www.javaworld.com/article/2824163/application-performance/stability-patterns-applied-in-a-restful-architecture.html?page=3
http://assets.en.oreilly.com/1/event/79/Stability%20Patterns%20Presentation.pdf
#### spring cloud
http://stackoverflow.com/questions/30701673/how-to-use-spring-cloud-from-nodejs
http://stackoverflow.com/questions/33007887/how-to-register-node-app-with-spring-cloud-and-netflixs-eureka
https://spring.io/guides/gs/spring-cloud-and-lattice/
http://lattice.cf/
##### eureka
 * https://github.com/Netflix/eureka/wiki/Eureka-REST-operations
 * https://github.com/Netflix/eureka/wiki/Understanding-eureka-client-server-communication
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
 * https://www.udacity.com/account/auth#!/signin?next=https%3A%2F%2Fclassroom.udacity.com%2Fcourses%2Fud615&enroll=ud615
 *
 * https://github.com/zutherb/AppStash/tree/master/kubernetes
   https://github.com/eventuate-local/eventuate-local/blob/master/eventuate-local-java-embedded-cdc/src/main/java/io/eventuate/local/cdc/debezium/EventTableChangesToAggregateTopicRelay.java event source platform eventuate
 * http://eventuate.io/exampleapps.html  案例程序
 * willb/notebook                              tutorial  hub.qingyuanos.com/game/notebook            tutorial spark tutorial
#### kubernetes network
 * https://www.slideshare.net/CJCullen/kubernetes-networking-55835829
 * http://dockone.io/article/1935 calico vs contiv
 * http://www.opencontrail.org/opencontrail-architecture-documentation/#section1 opencontrail
 * http://feisky.xyz/sdn/container/kubernetes.html ovn  Romana LVS DPDK ...
 * http://blog.gingergeek.com/2016/09/container-networking-a-breakdown-explanation-and-analysis/ MACvlan and IPvlan
 * http://www.youruncloud.com/blog/95.html MACVLAN IPvLan
 * http://blog.sflow.com/2016/06/docker-networking-with-ipvlan-and.html
 * http://www.nirmata.com/2016/05/networking-microservices-with-cisco-contiv-and-nirmata/ service isolation
 * https://www.slideshare.net/kubecon/container-network-interface-network-plugins-for-kubernetes-and-beyond
 * https://thenewstack.io/hackers-guide-kubernetes-networking/
#### kubernetes network practice
 * http://mt.sohu.com/20170222/n481366309.shtml 京东
 * http://sanwen.net/a/gulwwbo.html 一个适合 Kubernetes 的最佳网络互联方案
#### docker networky/blob/master/experimental/vlan-networks.md
### kubernetes performance k8s性能
 * https://github.com/openshift/svt
 * https://github.com/distributed-system-analysis/pbench
 * https://github.com/kubernetes/perf-tests/tree/master/network/benchmarks/netperf
### kubernetes service dependency
 * https://github.com/Mirantis/k8s-AppController  https://github.com/kubernetes/kubernetes/issues/29804
 * https://github.com/kubernetes/kubernetes/issues/2385 https://github.com/kubernetes/kubernetes/issues/2385
 * https://github.com/kubernetes/kubernetes/issues/7365 https://github.com/kubernetes/community/pull/176
 * https://github.com/kubernetes/kubernetes/pull/37612  https://github.com/kubernetes/kubernetes/pull/37612/files/b02b15bc7aab8b7ff428858b631ecac6c13ff2f8#diff-d09e3fda26611bdf9557d4227edb79d2
 * https://github.com/kubernetes/community/pull/176
#### test result
 * https://www.percona.com/blog/2016/08/03/testing-docker-multi-host-network-performance/
 * http://machinezone.github.io/research/networking-solutions-for-kubernetes/
 * https://news.ycombinator.com/item?id=11132574 Comparison of Networking Solutions for Kubernetes (machinezone.github.io)
##### performance test
 * openshift/svt/applications_scalability/app-scalability.sh shell e2e commands
 * openshift/svt/openshift_scalability/pyconfig.yaml project template example
 * kubernetes/perf-tests performance tests
##### redis performance tuning
 * https://redis.io/topics/latency  https://dzone.com/articles/redis-performance-benchmarks https://matt.sh/redis-benchmark-compilers https://blog.newrelic.com/2015/05/11/redis-performance-metrics/ https://matt.sh/redis-benchmark-compilers
 * http://shokunin.co/blog/2014/11/11/operational_redis.html
##### mongodb performance tuning
 * http://blog.kubernetes.io/2017/01/running-mongodb-on-kubernetes-with-statefulsets.html
##### rabbitmq performance tuning
##### kafka performance tuning
##### cassandra performance tuning
##### MySQL performance tuning
 * 性能指标
 * http://www.clusterdb.com/mysql-cluster/mysql-cluster-database-7-performance-benchmark
 * https://www.mysql.com/why-mysql/benchmarks/mysql-cluster/
 * http://www.fromdual.com/mysql-single-query-performance-the-truth
 * http://blog.takipi.com/amazon-ec2-2015-benchmark-testing-speeds-between-aws-ec2-and-s3-regions/
 * https://lg.io/2015/10/25/real-world-benchmarking-of-s3-azure-google-cloud-storage.html
 * https://www.nuxeo.com/blog/some-glusterfs-experiments-and-benchmarks/
 * https://www.slideshare.net/Red_Hat_Storage/red-hat-gluster-storage-performance
##### production experiences
 * https://acotten.com/post/1year-kubernetes
 * http://blog.kubernetes.io/2016/09/high-performance-network-policies-kubernetes.html High performance network policies in Kubernetes clusters
##### 长连接与负载均衡
 * http://www.sunchangming.com/blog/post/4658.html 长连接与负载均衡
#### well known labels annotations and taints
 * https://kubernetes.io/docs/reference/labels-annotations-taints/
#### kubernetes statefulset
#####  statefulset mysql example
 * https://kubernetes.io/docs/tasks/run-application/run-replicated-stateful-application/
 * https://hub.docker.com/r/ist0ne/xtrabackup/tags/
##### federated statefulset
 * https://github.com/kubernetes/community/pull/437/files#diff-edff396d2a534e6a4d33a98d56df7b6d
#### kubernetes backup
 * https://github.com/mhausenblas/reshifter https://github.com/mhausenblas/reshifter/blob/master/docs/strategies.md https://github.com/mhausenblas/reshifter/blob/master/docs/architecture.md
 * https://github.com/pieterlange/kube-backup
 * https://github.com/kubernetes/kubernetes/issues/24229
 * https://kubernetes.io/docs/getting-started-guides/ubuntu/backups/
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
 * codeowl https://medium.com/code-owl/solving-note-taking-for-devs-finally-5516b5397be7
### kubernetes errors
#### pod debugging-hook-handlers
 * https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#debugging-hook-handlers
 *
## other CMP cloud management platform
### OpenNebula
 * https://github.com/OpenNebula/one https://opennebula.org/
### selfbits
 * https://github.com/selfbits/scp-ng2-sdk
### foreman
 * https://github.com/theforeman/foreman
#### smart-proxy
 * https://github.com/theforeman/smart-proxy
### appscale
 * https://www.appscale.com/why-appscale/
 * https://www.appscale.com/get-started/deploy-appscale/
### Embotics
 * http://www.embotics.com/
### comparison
 * https://en.wikipedia.org/wiki/Cloud_computing_comparison
 * https://pdfs.semanticscholar.org/8c6d/859bede8b0a0676ac3f9291ae34b9481c1eb.pdf
## openstack
### release notes
 * https://wiki.openstack.org/wiki/ReleaseNotes/Liberty
### configuration 配置，常用驱动 driver
 * http://docs.openstack.org/liberty/config-reference/content/ceph-rados.html
 * documents http://docs.openstack.org/
 * APIs http://developer.openstack.org/api-ref.html
### openstack federated identity
 * https://docs.openstack.org/developer/keystone/federation/federated_identity.html
 * https://specs.openstack.org/openstack/keystone-specs/specs/kilo/openid-connect.html
### 配置模版格式
 * https://github.com/toml-lang/toml/blob/master/examples/example-v0.4.0.toml  类似ini的模版格式
 * https://github.com/dbohdan/remarshal
```
kubectl get svc nginx -o yaml | ./remarshal.py -if yaml -of toml
```
 * http://kubernetes.io/docs/user-guide/kubectl/kubectl_annotate/  --overwrite 在命令行覆盖配置文件中的属性

## openstack on kubernetes
 * https://github.com/stackanetes/stackanetes
 * https://github.com/rackn/digitalrebar-ux
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
#### openstack manage vmware
 * https://www.nextplatform.com/2015/08/18/platform9-melds-openstack-cloud-vmware-virtualization/ openstack instead of vRealize
 * https://github.com/vmware/pyvmomi
 * https://github.com/vmware/govmomi
 * https://docs.openstack.org/mitaka/config-reference/compute/hypervisor-vmware.html
 * https://platform9.com/blog/guide-to-understanding-openstack-esxi/
 * https://blogs.vmware.com/openstack/tag/vmware-vsphere/ vSphere Templates as OpenStack Images
 * https://docs.vmware.com/en/VMware-Integrated-OpenStack/3.1/com.vmware.openstack.admin.doc/GUID-D1B401FA-4A32-488A-A9D5-C032FA231A76.html
 * https://www.mirantis.com/blog/integrating-vmware-esxi-openstack-opencontrail/
 * Self-service and automation using OpenStack for VMware vSphere
 * https://cloudarchitectmusings.com/2015/09/11/how-to-create-the-best-openstack-cloud-for-vmware-vsphere/
 * https://docs.vmware.com/en/vRealize-Automation/index.html
#### VMWARE vRealize product line
 * https://docs.vmware.com/en/vRealize-Automation/index.html UserGuide
 * http://searchservervirtualization.techtarget.com/feature/Comparing-the-top-virtualization-systems-management-products
 compare
 * http://searchservervirtualization.techtarget.com/feature/Comparing-the-top-virtualization-systems-management-products Self-service provisioning
 * https://blogs.vmware.com/management/2017/03/managing-sddc-vrealize-code-stream-management-pack-devops.html code stream
 * https://blogs.vmware.com/management/2017/06/introducing-vrealize-automation-7-3.html vRealize automation
 * https://blogs.vmware.com/management/2017/06/whats-new-in-vrealize-intelligent-operations.html vRealize Operations
##### Self-service and automation feature
 * vRealize Automation
 * Embotics vCommander  https://www.youtube.com/watch?v=5KZXirntT4g  Getting Started with Cloud Automation
 * http://docs.embotics.com/index.html?manage_requests_newvms.htm
 * VMTurbo Operations Manager offers built-in automation capabilities
##### Monitoring and reporting tool
 * XenCenter has some really good search and reporting capabilities
 * VMware's primary reporting tool is vRealize Operations Embotics vCommander
 * https://docs.vmware.com/en/vRealize-Operations-Manager/index.html
 * http://docs.embotics.com/index.html?tasks_alerts.htm
 * Reporting might just be VMTurbo Operations Manager's best feature
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

#### DAS NAS SAN
 * https://www.slideshare.net/gsmida/das-raid-nas-san

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
#### coredns
 * https://github.com/coredns/coredns
 * https://github.com/blachniet/coredns-docker
 * http://www.zonefile.org/?lang=en#zonefile https://en.wikipedia.org/wiki/Zone_file https://en.wikipedia.org/wiki/List_of_DNS_record_types
### marketplace
 * https://marketplace.openshift.com/

## openshift sso
### openshift jenkins sso
 * https://github.com/openshift/jenkins-openshift-login-plugin
 * http://blog.andyserver.com/2016/10/integrating-openshift-authentication-jenkins/
#### openshift jenins integration
 * https://docs.openshift.org/latest/using_images/other_images/jenkins.html#using-the-jenkins-kubernetes-plug-in-to-run-jobs https://github.com/openshift/jenkins-sync-plugin
 * https://docs.openshift.org/latest/dev_guide/builds/build_strategies.html#pipeline-strategy-options
### openshift jenkins fabric8 jenkins
 * https://fabric8.io/presentations/JenkinsWorld-CD-Jenkins-Docker-Kubernetes.pdf
 * https://github.com/fabric8io/fabric8-pipeline-library https://github.com/fabric8io/fabric8-jenkinsfile-library
 * https://jenkins.io/doc/book/architecting-for-scale/
 * https://blog.openshift.com/openshift-3-3-pipelines-deep-dive/ https://github.com/openshift/jenkins
 * https://blog.openshift.com/cicd-with-openshift/
 * https://github.com/openshift/jenkins-plugin
 * https://github.com/openshift/jenkins-client-plugin Experimental
#### jenkins pipeline steps
 * https://jenkins.io/doc/pipeline/steps/
 * https://jenkins.io/doc/book/pipeline/syntax/
#### jenkins error
##### not com.microsoft.tfs.core.exceptions.TECoreException:  Hudson-dspb2_cicd-MASTER; jenkins-1-kb701
https://issues.jenkins-ci.org/browse/JENKINS-33487
https://github.com/Microsoft/team-explorer-everywhere/blob/294180f7a4d471fb9a2bfda012fb420bd404c499/source/com.microsoft.tfs.core.ws.runtime/src/com/microsoft/tfs/core/ws/runtime/client/SOAP12Service.java
#####
### minishift
 * https://marketplace.openshift.com/
```
# config files
cd /mnt/sda1/var/lib/minishift
ps -aef
/usr/local/bin/openshift start --master-config=openshift.local.config/master/master-config.yaml --node-config=openshift.local.config/node-minishift/node-config.yaml
/var/lib/origin/openshift.local.config/master/master-config.yaml
```
### openshift deployment DeploymentTriggerController
```
pkg/cmd/server/origin/run_components.go
	controller := triggercontroller.NewDeploymentTriggerController(
```
####
```
cat /mnt/sda1/var/lib/boot2docker/docker.log
```
##### expose openshift registry
```
oc expose dc/docker-registry --name=external-docker-registry --port=5000 --target-port=5000 --type=NodePort
dockerd -D -g /var/lib/docker -H unix:// -H tcp://0.0.0.0:2376 \
--label provider=virtualbox \
--insecure-registry 172.30.0.0/16 \
--insecure-registry 192.168.99.100 \
--tlsverify --tlscacert=/var/lib/boot2docker/ca.pem \
--tlscert=/var/lib/boot2docker/server.pem \
--tlskey=/var/lib/boot2docker/server-key.pem -s aufs >> /var/lib/boot2docker/docker.log &
minishift start --insecure-registry=192.168.99.100 --insecure-registry=172.30.0.0/16 --vm-driver=virtualbox
docker login 172.30.231.67:5000 -u admin -p ZJNpd7Qejzs_59tt04I2dN1w1ufpS-sv4r4qhfJF8ys
docker login 192.168.99.100:31000 -u admin -p ZJNpd7Qejzs_59tt04I2dN1w1ufpS-sv4r4qhfJF8ys
vi /var/lib/boot2docker/docker.log
cat /var/lib/boot2docker/docker.log | grep insecure
minikube start --insecure-registry 192.168.99.100 --insecure-registry 172.30.0.0/16 --vm-driver=virtualbox -v 5
docker-machine create -d virtualbox --engine-insecure-registry 192.168.99.100 --engine-insecure-registry 172.30.0.0/16 dev
docker-machine create -d virtualbox --engine-insecure-registry 192.168.99.100:31000 --engine-insecure-registry 172.30.0.0/16 default
minikube start --vm-driver=virtualbox --extra-config apiserver.cors-allowed-origins=*
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
### benchmark and comparison
#### benchmarks
 * https://github.com/observing/balancerbattle
 * https://news.ycombinator.com/item?id=5517258 Balancer Battle – Load testing HAproxy, Nginx and HTTP-Proxy's WebSocket support (github.com)
 * a real-life test-case of what happens  https://www.youtube.com/watch?v=yQvcHy_tPjI
#### comparisons
 * https://distinctplace.com/2017/04/20/haproxy-vs-nginx/
 * https://thehftguy.com/2016/10/03/haproxy-vs-nginx-why-you-should-never-use-nginx-for-load-balancing/
### Haproxy
 * http://www.oschina.net/translate/haproxy-ssl-termation-pass-through?cmp
#### stick server sticky session
 * http://www.haproxy.com/blog/load-balancing-affinity-persistence-sticky-sessions-what-you-need-to-know/
 * https://www.haproxy.com/blog/client-ip-persistence-or-source-ip-hash-load-balancing/
#### open source load testing tool
 * https://github.com/locustio/locust Python
 * https://github.com/tsenart/vegeta golang
### bamboo
 * https://github.com/QubitProducts/bamboo
 * http://www.open-open.com/lib/view/open1415511980137.html

### Nginx
####
 * https://nginx.org/en/CHANGES
 * https://hub.docker.com/r/centos/nginx-18-centos7/tags/
 * https://github.com/CentOS/CentOS-Dockerfiles/blob/master/nginx/centos7/Dockerfile
 * https://nginx.org/en/docs/beginners_guide.html
 * https://www.nginx.com/resources/wiki/start/topics/examples/full/

### traefik
 * https://github.com/containous/traefik/
 * https://news.ycombinator.com/item?id=13572033
 * https://hub.docker.com/r/philippallgeuer/openshift-traefik/ https://github.com/philall/openshift-traefik
### envoy
 * https://github.com/lyft/envoy/
 * https://news.ycombinator.com/item?id=14194026
#### istio
 * https://istio.io/docs/
 * https://istio.io/docs/samples/bookinfo.html
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
##### serverless programming language
 * https://www.quora.com/Which-programming-languages-are-used-in-serverless-computing-What-are-the-market-shares-for-Python-and-JavaScript
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
 * https://yipee.io/ Visual Modeling for Microservice Applications
 * http://cloudify.co/container-docker-kubernetes-orchestration-management-cloud-deployment-automation
 * https://platform9.com/ https://thenewstack.io/containers-container-orchestration/
 * http://www.midvision.com/blog/10-open-source-docker-tools-you-should-be-using
#### docker files
##### centos dockerfiles
 * https://github.com/CentOS/CentOS-Dockerfiles
### docker visualiser
 * https://github.com/veggiemonk/awesome-docker https://github.com/dockersamples/docker-swarm-visualizer have good box
 * https://yipee.io/ Visual Modeling for Microservice Applications https://puppet.com/product/capabilities/orchestration
 * https://github.com/CenturyLinkLabs/panamax-ui
 * http://containerjournal.com/2016/04/27/7-web-interfaces-container-management-orchestration/
 * https://github.com/portainer/portainer

##
### Intel RSD
 * https://github.com/01org/intelRSD
 *
### Awesome provisioning
 * https://github.com/epcim/awesome-sysadmin2
 * https://www.quora.com/What-are-some-good-bare-metal-provisioning-tools
 * https://www.cyberciti.biz/tips/server-provisioning-software.html
 * https://ifireball.wordpress.com/2013/01/08/quick-list-of-server-deploymentlife-cycle-management-systems/
 * https://devops.com/flap-part-1-server-provisioning/
### UEFI
 * http://www.uefi.org/
 * https://en.wikipedia.org/wiki/Unified_Extensible_Firmware_Interface
 * https://software.intel.com/en-us/blogs/2016/05/25/firmware-modern-data-center
 * http://www.uefi.org/sites/default/files/resources/UEFI_Plugfest_May_2015_HTTP_Boot_Redfish_Samer_El-Haj_ver1.2.pdf
#### StackIQ
 * https://github.com/StackIQ/stacki-kubernetes

#### OpenStack Baremetal ironic
 * http://superuser.openstack.org/articles/manage-multi-node-kubernetes-deployment-bare-metal-cluster/
 * https://docs.openstack.org/developer/ironic/deploy/user-guide.html ironic boot sequence chart
 * http://www.infosysblogs.com/application-services/2016/07/my_experience_with_bare_metal_.html
### RedFish
 * https://www.packet.net/blog/redfish-and-the-future-of-bare-metal-server-automation/
 * http://www.infoworld.com/article/2692393/servers/redfish-spec-wiggles-servers-free-from-vendor-lockin.html
 * https://www.infoq.com/news/2015/08/redfish
 * http://redfish.dmtf.org/
 * http://redfish.dmtf.org/schemas/DSP0266_1.2.0.html schema
 * https://github.com/DMTF/Redfish-Tools  tools
 * http://redfish.dmtf.org/redfish/v1/mockup/767 mockup
#### openstack RedFish
 * https://www.openstack.org/summit/barcelona-2016/summit-schedule/events/16231/empowering-ironic-with-redfish-support
#### OData
 * http://www.odata.org/
 * https://en.wikipedia.org/wiki/Open_Data_Protocol

# programming coding 编程
## programming contests
 * https://www.thoughtco.com/list-of-programming-contests-challenges-958193
 * https://www.webpagefx.com/blog/web-design/10-puzzle-websites-to-sharpen-your-programming-skills/
 * https://github.com/timfenney/contest/tree/master/uva/contest%20volumes
 * https://news.ycombinator.com/item?id=14661595 http://blog.thefirehoseproject.com/posts/learn-to-code-and-be-self-reliant/

## language comparison
### benchmarks
 * https://github.com/kostya/benchmarks
 * http://benchmarksgame.alioth.debian.org/
 * https://benchmarksgame.alioth.debian.org/u64q/go.html
### Comparing Golang with Java
 * https://news.ycombinator.com/item?id=10402307
 * https://news.ycombinator.com/item?id=2532995
 * https://javax0.wordpress.com/2016/04/27/comparing-golang-with-java/
 * https://www.quora.com/What-advantages-does-Go-have-compared-to-Java-or-Python
## hardware contest
 * https://hackaday.io/
## thm 算法
### generic design workflow
#### design an extensible northward interface, southward interface
#### implement north-worth API command, future support SDK, Go, Java, Python
#### Support Web Interface
#### Support a Deployment and Installation toolkit for default south-ward
#### Support a minimized D & I toolkit
#### Northward API should be irrelevant to D & I toolkit
#### Addon product is based on Northward API
### generic interface
### Simplex algorithm  单纯形法
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
### code lint static analysis
 * https://github.com/mre/awesome-static-analysis
 * https://en.wikipedia.org/wiki/List_of_tools_for_static_code_analysis
 * https://github.com/Qafoo/QualityAnalyzer
## programming paradigm 编程范式
 * http://people.cs.aau.dk/~normark/prog3-03/html/notes/paradigms_themes-paradigm-overview-section.html
```
imperative paradigm 命令式First do this and next do that
functional paradigm 函数式Evaluate an expression and use the resulting value for something
logic paradigm 逻辑式     Answer a question via search for a solution
object-oriented paradigm 面向对象式Send messages between objects to simulate the temporal evolution of a set of real world phenomena
procedure oriented 面向过程
structural programme 结构化编程
computer algebra, also called symbolic computation or algebraic computation,  symbolic programming
https://en.wikipedia.org/wiki/GNU_Multiple_Precision_Arithmetic_Library
```
## template engines
### go template
 * https://siongui.github.io/2015/02/24/python-jinja2-vs-go-html-template-2/
 * https://github.com/subfuzion/envtpl
### java templates
 * https://dzone.com/articles/template-engines-at-one-spring-boot-and-engines-se
 * https://github.com/jreijn/spring-comparing-template-engines
### python template
 * https://siongui.github.io/2015/02/24/python-jinja2-vs-go-html-template-2/
### bash template
 * https://github.com/hairyhenderson/gomplate
 * envsubst https://www.gnu.org/software/gettext/manual/html_node/envsubst-Invocation.html
## programming teaching
### scratch 教小孩编程
 * https://scratch.mit.edu/
### Quine8 Q8 计算机底层演示
## trend
 * https://github.com/showcases/programming-languages
## development tools
### theia
 * https://github.com/theia-ide/theia/blob/master/doc/Developing.md
 * https://hub.docker.com/r/stoyanovd/theia/
 * https://typefox.io/theia-one-ide-for-desktop-cloud
### atom

## architecture
 * http://stackoverflow.com/questions/8535703/recommend-source-code-comprehension-tool
 * https://softvis.wordpress.com/tools/   Structure101  Software Visualization
 * http://windows7themes.net/en-us/architecture-development-environment-top-5-alternatives-to-structure101/  ArchStudio
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
#### nodejs visual programming Flow-based programming serverless programming
 * https://github.com/noflo/noflo
 * http://www.jpaulmorrison.com/fbp/noflo.html
 * https://github.com/jpaulm flow-based programming language
### nodejs repository
 * https://www.npmjs.com/package/sinopia https://hub.docker.com/r/bankiru/sinopia/  latest https://github.com/rlidwka/sinopia https://github.com/RnbWd/sinopia-docker https://hub.docker.com/r/rnbwd/sinopia/
 * https://www.jfrog.com/confluence/display/RTF/Npm+Registry
 * https://github.com/krakenjs/kappa
 * https://stackoverflow.com/questions/7575627/can-you-host-a-private-repository-for-your-organization-to-use-with-npm
### node yarn
 * https://blog.risingstack.com/yarn-vs-npm-node-js-package-managers/
 * https://stackoverflow.com/documentation/node.js/9441/yarn-package-manager#t=201705252331490762897
 * https://www.pluralsight.com/guides/node-js/yarn-a-package-manager-for-node-js
 * https://stackoverflow.com/questions/40057469/what-is-the-difference-between-yarn-lock-and-npm-shrinkwrap
 * http://www.infoworld.com/article/3172725/javascript/npm-or-yarn-nodejs-devs-pick-their-package-manager.html
 * https://stackoverflow.com/questions/40057469/what-is-the-difference-between-yarn-lock-and-npm-shrinkwrap
### nexe  create a single executable out of your node.js apps
 * https://github.com/nexe/nexe
#### nexe errors
##### Cannnot find module
 * use absolute path source file
#### exec nodejs script directly
```
#!/usr/bin/env node
```
### grunt
#### grunt errors
##### Error: Cannot find module 'coffee-script'
 * https://stackoverflow.com/questihttps://www.npmjs.com/package/generator-nodejs-cli-typescriptons/13011290/cannot-find-module-coffee-script
##### Local Npm module "grunt-contrib-concat" not found. Is it installed?
 * https://stackoverflow.com/questions/23767122/grunt-getting-local-npm-module-xxx-not-found-is-it-installed-whats-caus
```
delete the node_modules folder (or back it up somewhere)
and then run npm install
```
### typescript
#### typescript Command Line interface CLI
 * https://libraries.io/search?keywords=cli&languages=TypeScript
 * https://github.com/vilic/clime https://github.com/vilic/baseman typescript testing
 * https://www.npmjs.com/package/generator-nodejs-cli-typescript
 * https://www.npmjs.com/package/inquirer
### angularjs
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
#### angular 2 components
 * https://github.com/brillout/awesome-angular-components
 * https://github.com/AngularClass/awesome-angular
 * https://github.com/maiyaporn/angular2-wizard https://www.cc28tech.com/angular-2-multi-step-wizard-ui-router-part-1/
#### webpack
  * https://github.com/webpack/webpack
  * http://www.dotnetcurry.com/angularjs/1320/using-webpack-bundling-with-angular-2
  * https://github.com/AngularClass/angular2-universal-starter
  * https://www.quora.com/What-is-the-difference-between-Angular-CLI-Webpack-Browsersync-etc
  * https://github.com/AngularClass/angular2-webpack-starter
  * https://react-etc.net/entry/angular-2-cli-moves-from-systemjs-to-webpack
#### typescript vs coffee-script
 * https://www.slideshare.net/NeilGreen1/type-script-vs-coffeescript-vs-es6
 * https://bytescout.com/blog/2016/07/javascript-vs-coffeescript-vs-typescript.html
#### angular 2 chatbot
 * https://github.com/lilia-simeonova/chatbot-for-learning-angular
 * https://github.com/ng-book/angular2-rxjs-chat
 * https://medium.com/@RecastAI/a-nodejs-chatbot-tutorial-part-1-a2abd1b1c715
#### angular 2 error
##### You have to be inside an angular-cli project in order to use the serve command harbor
 * https://github.com/angular/angular-cli/issues/4379
```
npm install -g @angular/cli
```
#### angular 2 d3 angular charts
 * https://github.com/datencia/d3js-angular2-example
 * https://github.com/tomwanzek/d3-ng2-service
 * https://github.com/swimlane/ngx-charts
 * https://www.angularjs4u.com/angularjs2/top-20-angular-2-charts-graphs/
#### angular 2 examples
 * https://github.com/mgechev/switching-to-angular2
 * https://github.com/mgechev/angular-seed#examples
 * https://tests4geeks.com/angular-2-tutorial/
 * https://github.com/thelgevold/angular-2-samples
 * https://github.com/angular/angular-cli  how to install angular 2
 * http://www.protractortest.org/#/ end-to-end testing for angular
 * https://akveo.github.io/ng2-admin/articles/002-installation-guidelines/
 * https://github.com/akveo/ng2-admin examples
 * https://www.akveo.com/products.html
 * https://github.com/AngularClass/awesome-angular
 * https://www.dunebook.com/5-best-open-source-project-examples-built-using-angular-2/  https://github.com/ng-book/angular2-rxjs-chat
##### ng2-admin structure
 * src/app/app.translation.module.ts src/assets/i18n/CN/zh.json translation path
 * https://akveo.github.io/ng2-admin/articles/011-changing-color-scheme/
#### angular 2 templat syntax
 * https://embed.plnkr.co/?show=preview
 * https://angular.io/docs/ts/latest/guide/architecture.html#!#modules
#### angular 2 trainings
 * http://onehungrymind.com/build-a-simple-website-with-angular-2/
 * https://www.udemy.com/angular-2-projects/
 * https//www.sitepoint.com/ultimate-angular-cli-reference/
 * https://www.ibm.com/developerworks/library/wa-implement-a-single-page-application-with-angular2/index.html
#### package manager
 * http://gulpjs.com/ https://www.npmjs.com/package/gulp-yarn
 * https://www.sitepoint.com/yarn-vs-npm/ Everything You Need to Know
 * https://www.webpagefx.com/blog/web-design/grunt-vs-gulp/
#### angular 2 end 2 end testing
 * http://www.gistia.com/guide-end-end-testing-angular-2/
 * https://blog.jscrambler.com/getting-started-with-angular-2-end-to-end-testing/
 * https://github.com/alexpods/angular2-universal-starter
 * https://dzone.com/articles/getting-started-with-angular-2-end-to-end-testing
#### angular 2 with MockBackend
 * https://www.sitepoint.com/angular-2-mockbackend/
 * http://www.thejoemorgan.com/blog/2016/11/21/testing-apis-in-angular-2/
 * http://restlet.com/company/blog/2016/04/08/interacting-efficiently-with-a-restful-service-with-angular2-and-rxjs-part-1/   https://stackoverflow.com/questions/43114801/angular2-simulate-rest-service
 * http://blog.rangle.io/testing-your-angular-2-application-part2/
 * https://angular-2-training-book.rangle.io/handout/testing/services/mockbackend.html
#### angular openstack
 * https://blueprints.launchpad.net/horizon?searchtext=angular
#### angular 4
 * https://www.udemy.com/the-complete-guide-to-angular-2/
 * https://github.com/panacloud https://github.com/panacloud/learn-angular
#### app generator
 * https://github.com/swagger-api/swagger-codegen/tree/master/samples/client/petstore/typescript-angular
 * https://jhipster.github.io/  angular + spring cloud
 * https://github.com/yeoman/generator-angular
 * https://github.com/teerapap/generator-go-angular not active
 * http://stackoverflow.com/questions/29649578/available-yeoman-generator-for-angular-2
### redux
 * http://redux.js.org/docs/introduction/Examples.html
 * https://github.com/angular-redux/store
#### Web GUI recorder
 * https://github.com/tebelorg/TA.Gui
## OCaml
 * https://en.wikipedia.org/wiki/OCaml https://ocaml.org/
 * https://en.wikipedia.org/wiki/Standard_ML
 * https://github.com/facebook/infer https://en.wikipedia.org/wiki/Standard_ML
## Python
### 学习
 * http://www.jb51.net/article/33991.htm
 * http://docs.python.org/tutorial/index.html
 * http://www.pythonchallenge.com/
#### fabric
 * http://www.fabfile.org/
 * https://pypi.python.org/pypi/Fabric3
### ansible
#### molecule 分子 atom 原子
 * https://github.com/metacloud/molecule
 * https://molecule.readthedocs.io/en/stable-1.24/
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
### pypi python package index repo
 * http://doc.devpi.net/latest/userman/devpi_concepts.html
 * https://hub.docker.com/r/muccg/devpi/
### ansible tower a web interface for ansible
 * https://github.com/pearsonappeng/tensor-ui https://github.com/pearsonappeng/tensor
 * https://github.com/ansible-semaphore/semaphore
 * https://hub.docker.com/r/gcavalcante8808/semaphore/
 * https://github.com/OpenMake-Software/DeployHub
### ansible best practice
 * https://www.youtube.com/watch?v=5BhAJ4mEfZ8 don't just start service
### ansible galaxy
 * https://github.com/ansible/galaxy
#### ansible galaxy ansible role usage
 * https://opencredo.com/reusing-ansible-roles-with-private-git-repos-and-dependencies/
 * https://www.jeffgeerling.com/blog/using-ansible-galaxy
 * https://www.reddit.com/r/ansible/comments/3o1zqu/local_galaxy_instance/
### ansible playbooks
 * https://docs.ansible.com/ansible/playbooks_conditionals.html
 * https://stackoverflow.com/questions/29156146/how-to-validate-that-a-file-has-a-specific-substring-with-ansible
### ansible errors
#### privilege output closed while waiting for password prompt
 * use remote host instead of local connection
### pip 安装
安装不了可以将python2.7目录允许访问。安装openstackclient后可以访问openstack服务
### python finite state machine FSM
 * https://wiki.python.org/moin/FiniteStateMachine
 *
### python visual editer
 * https://github.com/ikotler/pythonect
 * https://en.wikipedia.org/wiki/Visual_programming_language
## Go golang
 * https://github.com/golang/go/releases
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
### awesome golangs
 * https://github.com/avelino/awesome-go may image processing libs
 * https://github.com/lk-geimfari/awesomo/blob/master/languages/GOLANG.md
 *
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
### golang functional go function golang 函数式编程
 * https://golang.org/doc/codewalk/functions/
 * https://github.com/rShetty/functional-go
#### problem
```
一定要import "C"
//export

```
##### alpine no bash error
```
anic: standard_init_linux.go:175: exec user process caused "no such file or directory" [recovered]
	panic: standard_init_linux.go:175: exec user process caused "no such file or directory"
```
 * https://github.com/moby/moby/issues/27940
 * https://golang.org/cmd/link/ http://blog.hashbangbash.com/2014/04/linking-golang-statically/
 * https://stackoverflow.com/questions/33113190/how-to-create-a-statically-linked-golang-executable-with-go-1-5
 * http://blog.hashbangbash.com/2014/04/linking-golang-statically/
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
 * http://www.thinkplexx.com/learn/article/maven-learn-material/maven3/maven3-pom-using-groovy-ruby-scala-yaml-sonatype-polyglot
 * https://github.com/mrdon/maven-yamlpom-plugin/wiki
 * Use Nexus to cache files http://stackoverflow.com/questions/27767264/how-to-dockerize-maven-project-and-how-many-ways-to-accomplish-it
#### docker-maven
 * https://github.com/carlossg/docker-maven
 * https://github.com/spotify/dockerfile-maven
 * https://hub.docker.com/r/sonatype/nexus/
 * https://hub.docker.com/r/sonatype/nexus3/
### java8
#### default method
 * https://stackoverflow.com/questions/19998454/interface-with-default-methods-vs-abstract-class-in-java-8
##### default method in golang
 * https://github.com/golang/go/issues/16254
 * https://groups.google.com/forum/#!topic/golang-nuts/OYpSVcqlHDc
### java9
 * http://www.journaldev.com/13121/java-9-features-with-examples
 * https://dzone.com/articles/java-9-features-announced
 * https://bentolor.github.io/java9-in-action/#/
### JMX
#### jolokia JMX to JSON
 * https://jolokia.org/features-nb.html
#### nexus
 * https://dzone.com/articles/maven-repository-manager-nexus
 * http://stackoverflow.com/questions/364775/should-we-use-nexus-or-artifactory-for-a-maven-repo
 * https://github.com/JFrogDev/nexus2artifactory
 * https://dzone.com/articles/why-nexus-and-not-artifactory
 * http://wakaleo.com/blog/a-tale-of-two-repository-managers-nexus-and-artifactory-compared-and-contrasted
 * http://stackoverflow.com/questions/364775/should-we-use-nexus-or-artifactory-for-a-maven-repo
 * http://www.sonatype.org/nexus/2016/04/12/why-i-chose-nexus-over-artifactory-when-using-docker/
##### upload to nexus
 * https://support.sonatype.com/hc/en-us/articles/213465818-How-can-I-programatically-upload-an-artifact-into-Nexus-
 * http://www.softqe.com/maven-upload-artifact-to-nexus/
### gradle
 * https://support.sonatype.com/hc/en-us/articles/213465358-How-do-I-configure-my-Gradle-build-to-download-artifacts-from-Nexus-
 * https://howtoprogram.xyz/2016/10/10/convert-maven-pom-file-to-gradle-build-file/
 * https://docs.gradle.org/current/userguide/build_init_plugin.html
 * http://stackoverflow.com/questions/20862275/how-to-convert-a-maven-build-to-gradle
#### gocd
 * https://www.gocd.io/2015/12/28/gocd-continuous-delivery-through-pipelines.html
 * https://highops.com/insights/continuous-delivery-pipelines-gocd-vs-jenkins/
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
 * https://github.com/rust-lang/cargo
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
### UI testing
 * https://github.com/galenframework/galen/graphs/code-frequency
 * https://github.com/nightwatchjs/nightwatch/graphs/code-frequency

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