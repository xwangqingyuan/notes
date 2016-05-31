
# artificial intelligence 人工智能
## alphago
 * https://en.wikipedia.org/wiki/AlphaGo
 * http://www.dcine.com/2016/01/28/alphago/  

## machine learning go libraries
 * https://www.quora.com/Is-Go-the-best-programming-language-for-next-generation-A-I-and-machine-learning-applications
 * http://www.fodop.com/ar-1002

## machine learning rust libraries
 * https://github.com/maciejkula/rustlearn
 * http://autumnai.github.io/leaf/leaf/layer/trait.ComputeInputGradient.html
 * https://github.com/autumnai/leaf
 * https://jaredforsyth.com/2014/03/22/rust-vs-go/

## deep learning
 * https://en.wikipedia.org/wiki/Deep_learning#Deep_neural_networks
 * 解释
  - Universal approximation theorem interpretation广义逼近理论解释
  - Probabilistic interpretation 概率论解释
   * robabilistic interpretation led to the introduction of dropout as regularizer in neural networks.
   * 退学 Dropout is a technique of reducing overfitting in neural networks by preven
 * A deep neural network (DNN) is an artificial neural network (ANN) with multiple hidden layers of units between the input and output layers.
  - DNNs are typically designed as feedforward networks, but recent research has successfully applied the deep learning architecture to recurrent neural networks for applications such as language modeling.
   * A feedforward neural network is an artificial neural network where connections between the units do not form a cycle. This is different from recurrent neural networks.
 * 深度信念网络 A deep belief network (DBN) is a probabilistic, generative model made up of multiple layers of hidden units. It can be considered a composition of simple learning modules that make up each layer
  - Generative models contrast with discriminative models, in that a generative model is a full probabilistic model of all variables, whereas a discriminative model provides a model only for the target variable(s) conditional on the observed variables. 
 * 卷积 A CNN is composed of one or more convolutional layers with fully connected layers (matching those in typical artificial neural networks) on top.In machine learning, a convolutional neural network (CNN, or ConvNet) is a type of feed-forward artificial neural network in which the connectivity pattern between its neurons is inspired by the organization of the animal visual cortex, whose individual neurons are arranged in such a way that they respond to overlapping regions tiling the visual field One major advantage of convolutional networks is the use of shared weight in convolutional layers, which means that the same filter (weights bank) is used for each pixel in the layer
  - Compared to other image classification algorithms, convolutional neural networks use relatively little pre-processing. This means that the network is responsible for learning the filters that in traditional algorithms were hand-engineered. The lack of dependence on prior knowledge and human effort in designing features is a major advantage for CNNs.
  - https://en.wikipedia.org/wiki/Convolutional_neural_network

## Alpha–beta pruning
 * https://en.wikipedia.org/wiki/Alpha%E2%80%93beta_pruning
 * Minimax
  - https://en.wikipedia.org/wiki/Minimax#Minimax_algorithm_with_alternate_moves 最小最大策略
  - maximin value of a player is the largest value that the player can be sure to get without knowing the actions of the other players 最大最小策略
   * 手 herefore a ply in chess is a half-move. Thus, after 20 moves in a chess game, 40 plies have been completed—20 by white and 20 by black. In the game of Go, by contrast, a ply is the normal unit of counting moves; so for example to say that a game is 250 moves long is to imply 250 plies
   * Deep Blue (the first one to beat a reigning world champion, Garry Kasparov at that time) looked ahead at least 12 plies, then applied a heuristic evaluation function.

## Monte Carlo tree search (MCTS)
 * https://en.wikipedia.org/wiki/Monte_Carlo_tree_search
 * Monte Carlo tree search (MCTS) is a heuristic search algorithm for some kinds of decision processes,
 * Monte Carlo tree search does offer significant advantages over alpha–beta pruning and similar algorithms that minimize the search space.
 * Various modifications of the basic Monte Carlo tree search method have been proposed to shorten the search time. Some employ domain-specific expert knowledge, others do not.

Monte Carlo tree search can use either light or heavy playouts. Light playouts consist of random moves while heavy playouts apply various heuristics to influence the choice of moves.[

# Application framework 开源应用框架
## PHP 框架
### word press
## Java 框架
### Spring 框架demo
 * 开源电商系统 https://sourceforge.net/projects/broadleaf/
 * spring 开源项目 http://blog.csdn.net/lulin27861/article/details/21371147
## 中文著名开源项目
 * http://caibaojian.com/top100-source.html
## go 框架
### Go framewor
### Hugo

# big data 大数据  
## famous persons
### infoq famous persons
 * http://2016.qconbeijing.com/track/2769

## data visualization 数据可视化  BI business intelligence
### D3 Data Driven Document
#### 主页
 * https://d3js.org/
 * http://idl.cs.washington.edu/  

#### DAG 有向无环图 Directed Graph
 * https://github.com/cpettitt/dagre-d3/wiki
 * https://github.com/nickholub/d3-dag-visualization/tree/master/app
 * http://bl.ocks.org/mbostock/1153292
#### Tree 树状图
 * http://mbostock.github.io/d3/talk/20111018/tree.html
 * http://bl.ocks.org/mbostock/4339083

#### Relationship 关系图

### sigma.js
#### 主页
 * http://sigmajs.org/
 * https://github.com/jacomyal/sigma.js

### 几何规律
#### 泰森多边形
离散点的领地区域
泰森多边形又叫冯洛诺伊图（Voronoi diagram），得名于Georgy Voronoi，是由一组由连接两邻点直线的垂直平分线组成的连续多边形组成。
也可以有泰森多面体，离散点的垂直平分线相交，4面体的外接球面球心连接起来

几何规律
封闭N维空间，最小点数，N+1，
最小边数 C(N+1)2，最小面数C(N+1)3

## flink real time compute framework
 * http://flink.apache.org/
 * http://www.zhihu.com/question/30151872

# books
 * https://en.wikipedia.org/wiki/S._%28Dorst_novel%29

# cloud 云计算

## API comparison
### rancher API
 * http://docs.rancher.com/rancher/latest/en/api/  

### kubernetes API
 * http://kubernetes.io/docs/api/

### docker API
 * https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/

### openstack API
 * http://developer.openstack.org/api-ref.html

### alaud API
 * http://doc.tenxcloud.com/doc/v1/api/index.html
 * http://www.alauda.cn/docs/
 * http://docs.daocloud.io/api/?shell#
 * dataman

### tooling comparison
 * http://apievangelist.com/2015/06/06/comparison-of-automatic-api-code-generation-tools-for-swagger/
 * http://www.csdn.net/article/2013-02-20/2814189-API_DOC_TOOLS
 * https://www.infoq.com/research/api-documentation
 * https://github.com/apidoc/apidoc
 * http://www.mattsilverman.com/2013/02/tools-to-generate-beautiful-api-documentation.html
 * https://github.com/swagger-api  https://github.com/swagger-api
#### swagger tools
 * swagger to markdown tools
 * http://swagger2markup.github.io/swagger2markup/1.0.1-SNAPSHOT/#_usage_guide_7
 * http://mvnrepository.com/artifact/io.github.swagger2markup/swagger2markup-cli/1.0.0

### REST API guideline
 * http://martinfowler.com/articles/richardsonMaturityModel.html
 * http://www.iana.org/assignments/link-relations/link-relations.xhtml  
#### REST API HTTP methods
 * https://tools.ietf.org/html/rfc6902#page-12
 * https://tools.ietf.org/html/rfc5789
 * http://williamdurand.fr/2014/02/14/please-do-not-patch-like-an-idiot/
 
## azure  
 * 编排 http://windowsitpro.com/azure/orchestration-comes-microsoft-azure
 * http://www.codetails.com/2013/06/25/automate-orchestrate-azure-deployment/
 * http://www.theregister.co.uk/2015/04/20/microsoft_azure_service_fabric/ 声明编排
 * http://www.cnblogs.com/redmoon/archive/2015/04/23/4452111.html Service Fabric

## PaaS 
## solution 架构 解决方案
 * http://www.cloudcomputingpatterns.org/Static_Workload  
 * http://www.rightscale.com/blog/enterprise-cloud-strategies/identifying-workloads-cloud  
 * solution 架构 https://msdn.microsoft.com/dn630664

### 平台云比较
 * http://www.chinacloud.cn/show.aspx?id=20204&cid=14
 * Solum 流程
  - http://www.oschina.net/p/solum
  - 

## Desktop as a service
### VDI
 * http://baike.baidu.com/link?url=bQulh4Ri-8ZYvs1khfiwsPul_rPUK53ZURDdDGIq-R4UqBu8XEywq7LrkgD9yaqn5EkNgjnNO6rhQd1WRIXL3NqPMxeAwreNNzwyUAbpbza

## Docker  
 * docker build
  - docker file reference https://docs.docker.com/engine/reference/builder/
  - Installation 安装 docker https://docs.docker.com/linux/
  - https://docs.docker.com/linux/step_one/
### 从镜像导出Dockerfile的方法
 * undocker https://github.com/larsks/undocker/
 * docker cp 命令

### programming docker  compile docker
 * https://docs.docker.com/opensource/project/set-up-dev-env/
 * https://github.com/kubernetes/kubernetes/tree/master/build

### Docker security problem
 * http://integratedcode.us/2015/10/13/user-namespaces-have-arrived-in-docker/
https://integratedcode.us/2016/04/08/user-namespaces-sharing-the-docker-unix-socket/
http://man7.org/linux/man-pages/man5/subuid.5.html

### 案例总结 docker cases
 * http://www.chinacloud.cn/show.aspx?id=20351&cid=16
 * http://www.dockone.io/article/1169
 * 

### Docker Registry 镜像仓库
 * 中文 Docker auth http://www.tuicool.com/articles/UrMFBn
 * Docker p2p download distribution http://www.tuicool.com/articles/Abia2u2
 * https://github.com/docker/docker-registry  registry
 * https://github.com/vmware/harbor

### docker machine  
#### install docker machine
 * https://docs.docker.com/machine/install-machine/
 * https://docs.docker.com/machine/get-started/
```
curl -L https://github.com/docker/machine/releases/download/v0.6.0/docker-machine-`uname -s`-`uname -m` > /usr/local/bin/docker-machine && \
chmod +x /usr/local/bin/docker-machine

```
### docker swarm
#### create swarm
 * https://docs.docker.com/swarm/provision-with-machine/
```
docker-machine create \
    -d virtualbox \
    --swarm \
    --swarm-master \
    --swarm-discovery token://21a3c09b08b916b0285a8b51b9313dd8 \
    swarm-master
docker-machine create \
    -d virtualbox \
    --swarm \
    --swarm-discovery token://21a3c09b08b916b0285a8b51b9313dd8 \
    node-01
```
#### swarm descovery
 * https://docs.docker.com/swarm/discovery/


## Kubernetes  
### concepts 概念 
 * http://www.infoq.com/cn/articles/Kubernetes-system-architecture-introduction?utm_campaign=infoq_content&utm_source=infoq&utm_medium=feed&utm_term=global 
 * http://kubernetes.io/docs/user-guide/volumes/
 * http://dockone.io/article/1153 比较 borg omega
 * http://blog.kubernetes.io/2015/06/the-distributed-system-toolkit-patterns.html

### compile kubernetes build kubernetes
 * https://docs.docker.com/opensource/project/set-up-dev-env/
 * https://github.com/kubernetes/kubernetes/tree/master/build

### comparison 比较
 * http://www.nextplatform.com/2015/09/15/kubernetes-has-a-ways-to-go-to-scale-like-google-mesos/
 * http://www.nextplatform.com/2015/11/12/inside-ebays-shift-to-kubernetes-and-containers-atop-openstack/
 * http://www.nextplatform.com/2015/08/13/will-openstack-kubernetes-or-mesos-control-future-clusters/
 * https://kismatic.com/community/apaches-mesos-vs-googles-kubernetes/
 * https://www.oreilly.com/ideas/swarm-v-fleet-v-kubernetes-v-mesos
 * http://thenewstack.io/a-brief-comparison-of-mesos-and-kubernetes/
 * start order https://github.com/kubernetes/kubernetes/issues/1589
 * start order https://github.com/kubernetes/kubernetes/issues/2385

### kubernetes storage
 * https://docs.openshift.com/enterprise/3.1/install_config/persistent_storage/persistent_storage_ceph_rbd.html
 * https://access.redhat.com/documentation/en/openshift-enterprise/3.1/installation-and-configuration/chapter-14-configuring-persistent-storage
 * https://access.redhat.com/documentation/en/openshift-enterprise/3.1/installation-and-configuration/chapter-14-configuring-persistent-storage#nfs-reclaiming-resources
 * http://www.slideshare.net/kubecon/kubecon-eu-2016-kubernetes-storage-101
 * https://docs.google.com/spreadsheets/d/14-DEUm1HEHLn9yOEBHq9xxR6iZWdO4fYuluNClgEDYw/htmlview
 * https://keithtenzer.com/2015/08/20/openshift-v3-unlocking-the-power-of-persistent-storage/
 * http://accelazh.github.io/kubernetes/Play-With-Kubernetes-On-CentOS-7
 * https://github.com/kubernetes/kubernetes/pull/12502
 * https://github.com/kubernetes/kubernetes/issues/12338
 * https://huaminchen.wordpress.com/2015/04/08/ceph-rbd-as-persistent-storage-for-kubernetes/

### kubectl CLI
 * http://kubernetes.io/docs/user-guide/kubectl-overview/
 * 

### kubernetes API
 * http://kubernetes.io/docs/api-reference/v1/operations/

### 部署 deploy
 * http://www.meetup.com/OpenStack-Israel/events/228603910/
 * http://www.slideshare.net/dfilppi/hybrid-cloud-openstack-meetup 部署 slides

### Sharding on kubernete 数据分片
 * https://github.com/kubernetes/kubernetes/pull/13169
 * http://vitess.io/getting-started/  http://vitess.io/user-guide/sharding-kubernetes.html
 * https://clusterhq.com/2016/02/11/kubernetes-redis-cluster/

### jobs on kubernetes
 * https://github.com/kubernetes/kubernetes/issues/14188 

### 镜像广场 image repository
 * https://hub.tenxcloud.com/repos/google_containers

### multi zone 多区域  
### monitor 监控
 * https://github.com/kubernetes/heapster
 * http://stackoverflow.com/questions/33749911/a-combination-for-monitoring-system-for-container-grafanaheapsterinfluxdbcad
 * https://github.com/grafana/grafana  http://grafana.org/  http://www.dockone.io/article/569
### tracer &&monitoring
 * https://www.weave.works/blog/
 * https://github.com/weaveworks/scope
 * https://github.com/weaveworks/scope/tree/619c63a0a5f088ca6c25354da1e5627e35052dbc/experimental/tracer
### dapper trace
 * http://blog.csdn.net/zhanlijun/article/details/13169771
 * http://static.googleusercontent.com/external_content/untrusted_dlcp/research.google.com/zh-CN//pubs/archive/36356.pdf
 * https://github.com/openzipkin/zipkin
  * https://twitter.github.io/zipkin/Architecture.html
  * 
 * https://golanglibs.com/top?q=dapper
 * https://github.com/SpirentOrion/trace

### paas integration
 * https://github.com/fabric8io/fabric8


## openstack  
### release notes
 * https://wiki.openstack.org/wiki/ReleaseNotes/Liberty
### configuration 配置，常用驱动 driver
 * http://docs.openstack.org/liberty/config-reference/content/ceph-rados.html  
 * documents http://docs.openstack.org/
 * APIs http://developer.openstack.org/api-ref.html
 * 
### openstack HA
 * https://www.mirantis.com/blog/ha-platform-components-mysql-rabbitmq/

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

### murano 应用目录
 * https://wiki.openstack.org/wiki/Murano/ApplicationCatalog
 * https://wiki.openstack.org/wiki/Murano

### Monasca 监控服务
 * https://wiki.openstack.org/wiki/Monasca
 * https://wiki.openstack.org/wiki/Monasca

### neutron 网络

### magnum kubernetes 容器集群
 * https://review.openstack.org/#/c/204686/12/specs/container-networking-model.rst magnum设计
 * 脚本和配置 https://github.com/openstack/magnum/tree/master/magnum/templates/kubernetes/fragments
 * https://github.com/openstack/magnum/tree/master/magnum/templates/kubernetes/fragments 常用脚本和配置
 * 网络 https://wiki.openstack.org/wiki/Magnum/Networking
 * http://www.nextplatform.com/2015/11/12/inside-ebays-shift-to-kubernetes-and-containers-atop-openstack/ ebay 案例
 * http://docs.openstack.org/developer/magnum/ 工作进度
 * https://wiki.openstack.org/wiki/Magnum/Networking 网络

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


### openstack client 客户端
 * http://docs.openstack.org/developer/python-openstackclient/index.html
 * http://www.ibm.com/developerworks/cn/cloud/library/cl-openstack-network/
 * https://pypi.python.org/pypi/python-openstackclient
 * floating ips
  - subnet show ext_sub 显示floating ip分配池
 * login to server

## openshift
### General architecture
 * http://www.tuicool.com/articles/y6B73u
 * http://www.tuicool.com/articles/jEF3iub
 * https://github.com/openshift/openshift-pep/blob/master/openshift-pep-013-openshift-3.md
 * https://github.com/openshift/origin/blob/master/docs/openshift_model.md

### marketplace
 * https://marketplace.openshift.com/



### jenkins
 * https://github.com/openshift/jenkins-plugin
 * https://blog.openshift.com/continuous-integration-deployment-v3/
 * 

#### jenkins errors
 * http://stackoverflow.com/questions/25738061/java-nio-file-directorynotemptyexception-when-deleting-lastsuccessful-laststable
  - .file.DirectoryNotEmptyException 由于复制Jenkins目录造成
```

```
## ceph
 * http://docs.ceph.com/docs/master/architecture/#mapping-pgs-to-osds
 * http://docs.ceph.com/docs/master/rados/operations/pools/
 * http://docs.ceph.com/docs/master/rados/operations/data-placement/
 * http://docs.ceph.com/docs/master/rados/operations/crush-map/#jewel
 * http://www.wzxue.com/ceph-recovery/
### ceph GUI
 * https://github.com/ceph/calamari
 
## vagrant
 *  下载box  https://vagrantcloud.com/boxes/search?utf8=%E2%9C%93&sort=&provider=&q=openshift
 *  base boxes http://www.vagrantbox.es/

# design prinsipals
## A/B Test A/B测试
 * 冒烟测试（smoke test）、可用性测试（sanity test）和回归测试（regression test）、灰度发布、灰度放量
 * http://martinfowler.com/bliki/BlueGreenDeployment.html
 * http://martinfowler.com/bliki/CanaryRelease.html
 * http://blog.christianposta.com/deploy/blue-green-deployments-a-b-testing-and-canary-releases/ canary deployments

## Service Design principals
 * https://github.com/kubernetes/kubernetes/blob/master/docs/design/principles.md
 * https://en.wikipedia.org/wiki/Service_level_objective

## scheduler 调度器架构发展
 * http://www.firmament.io/blog/scheduler-architectures.html
 
## micro services 微服务
 * http://dockone.io/article/812 微服务架构
 * http://www.csdn.net/article/2014-08-06/2821078
 * http://stackoverflow.com/questions/25501098/difference-between-microservices-architecture-and-soa
  - In short, the microservice architectural style is an approach to developing a single application as a suite of small services, each running in its own process and communicating with lightweight mechanisms, often an HTTP resource API. These services are built around business capabilities and independently deployable by fully automated deployment machinery. There is a bare mininum of centralized management of these services, which may be written in different programming languages and use different data storage technologies.
 * http://www.oschina.net/news/70121/microservice/print
 * http://www.tuicool.com/articles/NRNrAj
 * patterns
  - http://microservices.io/patterns/microservices.html
  - microservice chassis 微服务底盘 http://microservices.io/patterns/microservice-chassis.html
  - Service discovery
   * One significant suggestion I have would be to generalize the concept of the Service Registry with the idea of a "Service Discovery Mechanism." Using a service registry (of which there is many) is only one type of service discovery mechanism. Further, service registries make certain assumptions about the infrastructure that may not be true, such that it's easy for services to be registered in a central registry, that a registry is consistently available or even that a registry is consistently at the same IP location or DNS name. I would expand the pattens to include a generalization of "Service Discovery Mechanism" with "Service Registry" to be a specialization pattern. The other obvious pattern would include "Service Probes and Responses" such as is provided by a number of "Internet of Things" discovery technologies such as AllJoyn, Multicast-DNS or DNS-Service Discovery (Apple Bonjour and Android Network Service Discovery), WS-Discovery or Simple Service Discovery Protocol (SSDP).
 * Use Case design of micro services
  - http://eventuate.io/exampleapps.html
 * Event sourcing CQRS Command Query Responsibility Segeragation
  - 海森堡bug http://www.infoq.com/cn/articles/exterminating-heisenbugs
  - https://github.com/eventstore/eventstore/wiki/Event-Sourcing-Basics
  - https://en.wikipedia.org/wiki/Domain-driven_design
  - http://eventuate.io/exampleapps.html
  - http://www.cqrs.nu/Faq
  - http://blog.jonathanoliver.com/cqrs-sagas-with-event-sourcing-part-i-of-ii/

## 架构参考 reference architecture  
### 电子商务 Ecommerce
 * http://www.csdn.net/article/2015-01-15/2823577 京东
 * http://www.csdn.net/article/1970-01-01/2825203 京东
 * http://www.csdn.net/article/2015-04-03/2824410

## distributed RPC framework
 * http://www.cnblogs.com/fxjwind/archive/2013/05/16/3082219.html
 * http://www.open-open.com/lib/view/open1438237185863.html
 * http://www.th7.cn/Program/go/201603/774088.shtml
 * http://www.open-open.com/lib/view/open1454584671464.html
### dubbo
 * https://github.com/alibaba/dubbo
 * http://www.oschina.net/p/dubbo
### ICE
 * http://blog.csdn.net/anghlq/article/details/6682341
 * https://en.wikipedia.org/wiki/Internet_Communications_Engine

### grpc protobuf
 * https://godoc.org/google.golang.org/grpc
### thrift
 * https://en.wikipedia.org/wiki/Apache_Thrift
 * http://weibo.com/1798777247/DhjihFBCe?type=comment
 
## message queue
### nanomsg
 * http://bravenewgeek.com/a-look-at-nanomsg-and-scalability-protocols/
 * https://github.com/nanomsg/nanomsg
### zeromq
 * http://zeromq.org/

## 软件腐蚀 software erosion
 * 原因 https://blog.heroku.com/archives/2011/6/28/the_new_heroku_4_erosion_resistance_explicit_contracts
  － https://en.wikipedia.org/wiki/Software_rot
  － 环境变化 Environment change，没用的代码 Unused code，疏于维护 Rarely updated
 * http://12factor.net/
  － 代码库 codebase， 依赖 dependencies，配置 config，后台服务 backing services，构建，发布，运行，Build，Release/Shop，Run，进程 Stateless processes，端口绑定 Porting binding，并发 Concurrency，死掉无污染人畜无害 Disposability，开发生产环境等同 Dev/Prod parity，日志 Logs，管理流程 Admin processes

## Application Integration
 * http://www.enterpriseintegrationpatterns.com/patterns/messaging/toc.html

## 并发编程
 * http://www.infoq.com/cn/articles/exterminating-heisenbugs

## 负载均衡 load balance  
### Haproxy
 * http://www.oschina.net/translate/haproxy-ssl-termation-pass-through?cmp
### bamboo
 * https://github.com/QubitProducts/bamboo
 * http://www.open-open.com/lib/view/open1415511980137.html

### Nginx

# database 数据库
## relational database 关系型数据库
### mysql  
### galera cluster
 * 负载均衡 http://galeracluster.com/documentation-webpages/haproxy.html#configuration
 * http://www.gpfeng.com/?p=603  https://mariadb.com/kb/en/mariadb/about-galera-replication/

## document database 文档数据库

## column-oriented database 列式数据库
 * https://en.wikipedia.org/wiki/Column-oriented_DBMS
 * https://en.wikipedia.org/wiki/List_of_column-oriented_DBMSes

## graph database 图数据库
 * http://db-engines.com/en/ranking/graph+dbms
 * 图数据库 http://www.infoq.com/articles/data-modeling-graph-databases
 * http://markorodriguez.com/2011/02/08/property-graph-algorithms/

### Triplestore RDF store Resource Description Framework
 * subject, a predicate, and an object triples
 * http://www.cs.utexas.edu/~schrum2/DBTripleStore.pdf

### 图数据库
 * http://orientdb.com/orientdb-vs-neo4j/
 * http://db-engines.com/en/system/Neo4j%3BOrientDB  

#### 图数据库设计模式
 * 如何决定一个对象是实体还是关系：原则1:两个实体之间同一类关系只能发生一次，所以只有有没有关系，没有多次关系纪录。关系不会单独持久化，只会在实体中持久化。被动关系不需要在非聚合根实体中持久化，而只需要在聚合根持久化主动方聚合根和统计结果。

# desktop skills 桌面操作技巧
## mac osx ios
### 行首，行尾，上下翻页 fn+left fn+right fn+up fn+down

# 著名网站famous sites
## 5 famous community
https://www.quora.com/topic/Docker
http://www.infoq.com/architecture-design/
http://geek.csdn.net/cloud
http://www.oschina.net/blog
## 5 famous place_to_technology
http://alternativeto.net/
## 5 famous computer-projects
 * http://www.openstack.org/blog/ 	http://releases.openstack.org/ https://github.com/openstack/nova
 * http://blog.docker.com/ https://github.com/docker/docker
 * https://github.com/kubernetes/kubernetes/releases	http://kubernetes.io/media/ https://github.com/kubernetes/kubernetes
 * https://www.opencontainers.org/
 * https://hadoop.apache.org/ https://github.com/apache/hadoop
 * http://spark.apache.org/ https://github.com/spark/core
 * https://blog.openshift.com/tag/v3/ https://github.com/openshift/origin
## 5 famous computer-scientists
marinfowler
http://martinfowler.com/
Marc.Shapiro
https://pages.lip6.fr/Marc.Shapiro/
lamport
http://www.lamport.org/

## 著名词汇
 * http://www.csdn.net/article/2013-04-16/2814915
  - Yoda Notation（Yoda 表示法），Mental Speedbump（头脑减速杠），Pearl Effect （珍珠效应），Sins of our Forefathers（先辈的罪），Katrina Effect（卡特里娜飓风效应），Workaround（变通），Jenga Code，Higgs-Bugson，Heisenbug



# network protocol
## real time protocol
### websocket
 * http://tools.ietf.org/html/rfc6455#page-11  

### webrtc  
 * http://www.cnblogs.com/lingyunhu/p/4058182.html
 * https://shishimao.com/
 * GIPS  http://baike.baidu.com/link?url=UraNY50AIdZQgN83ZKKY6wBpxbE6a7guHRCL2o722QD205s70QaiFoYK1LOKyj1pN1LQg4etg1IJ66jJngmCD_
 * http://baike.baidu.com/view/5855785.htm
 * stun turn ice 服务器 http://www.it165.net/admin/html/201503/5062.html http://www.it165.net/admin/html/201503/5062.html
#### 

# github
## github-commands
```
git add . && git commit -m "Add all content of $(pwd)" && git push
```
## git ssh  
### git client
 * 生成ssh key
```
ssh-keygen -t rsa -C "jenkins1@qingyuanos.com" -f /home/var/jenkins_ws/jenkins_home/qykeys/jenkins_id.pem
ssh-keygen -t rsa -C "jenkins1@qingyuanos.com" -f /root/.ssh/id_rsa -P "" -q
```
### git tag
 * http://blog.csdn.net/wangjia55/article/details/8793577
### git best practice
 * http://programmers.stackexchange.com/questions/165725/git-branching-and-tagging-best-practices

# graph editting
 * http://www.sitepoint.com/5-free-html5-presentation-systems/

## http://demo.qunee.com/#HierarchicLayouter%20Demo
# security
## cloud-security
## 安全名词
### cc攻击
http://baike.baidu.com/link?url=MRD3fyaa9_kNAf6-p9NSu4bU_UuO1YvDL6O5vsUqe_PFxYmNSV5CtNpmeb9Z6CpH5OJaHT1lLxWcBO7e_llve_
### high anti-DDoS DDoS高防

## network security
 * http://2016.qconbeijing.com/track/2801


### ssh
 * http://www.cnblogs.com/lzjsky/archive/2010/11/14/1877143.html
 * http://stackoverflow.com/questions/1011572/convert-pem-key-to-ssh-rsa-format  

#### openssh
 * http://sshwindows.sourceforge.net/ windows
 * http://security.stackexchange.com/questions/32768/converting-keys-between-openssl-and-openssh key转换
 * https://support.ssl.com/Knowledgebase/Article/View/19/0/der-vs-crt-vs-cer-vs-pem-certificates-and-how-to-convert-them key转换 PEM DER CER CRT


### openssl
#### ssl protocol illustration
 * http://www.cisco.com/c/en/us/support/docs/security-vpn/secure-socket-layer-ssl/116181-technote-product-00.html
 * http://www.ruanyifeng.com/blog/2014/09/illustration-ssl.html
 * https://tools.ietf.org/html/rfc5246
 * http://www.cisco.com/c/en/us/support/docs/security-vpn/secure-socket-layer-ssl/116181-technote-product-00.html

# programming coding 编程
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

## Python
### 学习
 * http://www.jb51.net/article/33991.htm
 * http://docs.python.org/tutorial/index.html
 * http://www.pythonchallenge.com/
### list comprehesions 列表解析和生成器表达式
 * http://www.jb51.net/article/26520.htm

### pip 安装
安装不了可以将python2.7目录允许访问。安装openstackclient后可以访问openstack服务

## Go
### 学习
 * learn by example https://gobyexample.com/
 * https://tour.golang.org/basics/1
### go frameworks packages library
 * http://libs.club/golang/
 * http://gorevel.cn/docs/index.html
 * https://github.com/gorilla/handlers
 * 

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

## java
### maven
 * docker 安装 https://github.com/carlossg/docker-maven/blob/8ab542b907e69c5269942bcc0915d8dffcc7e9fa/jdk-8/Dockerfile

## html 网页
## CSS
  * http://www.114la.com/other/rgb.htm
  * http://tool.ganchang.cn/getcolortool.html

# linux 

## /etc/apt/sources.list
 * ali sources list
```
deb http://mirrors.aliyun.com/ubuntu trusty main
deb-src http://mirrors.aliyun.com/ubuntu trusty main
deb http://mirrors.aliyun.com/ubuntu trusty-updates main
deb-src http://mirrors.aliyun.com/ubuntu trusty-updates main
deb http://mirrors.aliyun.com/ubuntu trusty universe
deb-src http://mirrors.aliyun.com/ubuntu trusty universe
deb http://mirrors.aliyun.com/ubuntu trusty-updates universe
deb-src http://mirrors.aliyun.com/ubuntu trusty-updates universe
```
## linux commands  linux 命令
### date  
 * https://fukun.org/archives/06112057.html  

### find
```
sudo find /var -name *.xml -type f | sudo xargs grep jenkins1
```
 * 替换sources.list 可使用/或%只要文本中不出现即可
```
sudo sed -i "s%archive.ubuntu.com%mirrors.aliyun.com%g" /etc/apt/sources.list
```
### sed
```
sed -i "3i nameserver 114.114.114.114" /etc/resolv.conf
sed -i 3d /etc/resolv.conf
删除文件行，插入文件行
```
# markup language 标签语言
## markdown
 * http://ibruce.info/2013/11/26/markdown/
## reStructedText

# network
## dns
google dns 8.8.8.8 和 8.8.4.4  
links  
 * etc/resolv.con配置 http://www.jb51.net/LINUXjishu/63310.html http://www.centoscn.com/CentOS/config/2013/0723/443.html
### dns commands
links
 * http://blog.sina.com.cn/s/blog_65f27fc20101fhmn.html  
 * http://tool.chinaz.com/dns/

### calico
 * http://www.tuicool.com/articles/quUfAjJ
 

1. dig
    1. dig -x 210.52.83.228
2. nslookup
    1. 查询所有 nslookup type=any
3. host

### dns record types
http://blog.sina.com.cn/s/blog_56294d0a0100zuxg.html  

### dns server software
 * dnsmasq 适合局域网dns服务，dns缓存
 * bind 服务器 http://www.360doc.com/content/14/0923/18/13047933_411817771.shtml
 * dnspod-sr
  - http://www.ttlsa.com/linux/dnspod-sr-little-dns/
  - http://www.361way.com/dnspod-sr/4674.html
  - https://github.com/DNSPod/dnspod-sr
 

### dns information links
 * http://www.dnsstuff.com/tools/
 * http://blog.sina.com.cn/s/blog_4607665901016jyd.html dns服务器地址
 * 

## proxy tunnel 代理 穿墙
### ssh 代理
 * https://segmentfault.com/a/1190000002718360
 * http://www.cnblogs.com/wangkangluo1/archive/2011/06/29/2093727.html
 * http://blog.163.com/java_star/blog/static/11771480520108259412586/
 * http://examplenow.com/zh-cn/package/connect-proxy/
 * UDP forwarding
  － http://zarb.org/~gc/html/udp-in-ssh-tunneling.html
  － http://superuser.com/questions/53103/udp-traffic-through-ssh-tunnel
  － https://help.ubuntu.com/community/SSH/OpenSSH/PortForwarding
### PREROUTING POSTROUTING 端口转发
 * http://blog.csdn.net/leo_wanta/article/details/7062936
 * http://zhangsha1251.blog.163.com/blog/static/6262405320116201132647/
 * http://linuxso.com/linuxxitongguanli/1066.html
 * windows forwarding http://serverfault.com/questions/210755/forwarding-rdp-via-a-linux-machine-using-iptables-not-working
 * http://serverfault.com/questions/660035/redhat-iptables-forwarding-to-virtualbox-windows-server-20120-vm-for-rdp
 * http://www.systutorials.com/816/port-forwarding-using-iptables/

# sales 销售
## 客户沟通技巧
 * http://zhidao.baidu.com/link?url=J7QM6hwwlOKnnuBkGvW4_AZcA_A8CORk48nFkEcbqcMhgyteUOCj3k-u5HJWi6M19shXwB4tzef40MJkrWgCWa
 * http://zhidao.baidu.com/link?url=gjeUkULSWuwnuQPO_qa2SsJzz9_55B65lHvrq5WwuYgnu7MWAqesxtg3uJ6GvWmGzORS6v0bhln3vAMtbtO7_5ng83pd2tKDt20WEZLdWdS

# software tools 软件工具  
## screen recorder 录屏软件  
### 最好用的抓屏
 * apowersoft screen recorder
### 开源软件  
 * http://www.opensourcesoftwaredirectory.com/Utilities/Screen-capture
 * http://elearningindustry.com/top-10-free-camtasia-studio-alternatives
 * http://www.shoutmeloud.com/camtasia-alternatives-free-windwows-mac.html

# statistics 统计学
## http://ec.europa.eu/eurostat/statistics-explained/index.php/Category:Glossary
graph duration 
accounting period/reporting period 会计期 报告期 
basic period/reference period 参考期 统计期 基准期
sampling frequency 采样频率 sampling rate 采样速率 sample period 采样周期 sampling cycle
observation period observation duration 观察期
