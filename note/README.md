
# artificial intelligence 人工智能
## alphago
 * https://en.wikipedia.org/wiki/AlphaGo

## deep learning
 * 

## Alpha–beta pruning
 * https://en.wikipedia.org/wiki/Alpha%E2%80%93beta_pruning
 * Minimax
  - https://en.wikipedia.org/wiki/Minimax#Minimax_algorithm_with_alternate_moves 最小最大策略
  - maximin value of a player is the largest value that the player can be sure to get without knowing the actions of the other players 最大最小策略

## Monte Carlo tree search (MCTS)
 * https://en.wikipedia.org/wiki/Monte_Carlo_tree_search
 * Monte Carlo tree search (MCTS) is a heuristic search algorithm for some kinds of decision processes,
 * Monte Carlo tree search does offer significant advantages over alpha–beta pruning and similar algorithms that minimize the search space.

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

# cloud 云计算

## PaaS 
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

## Kubernetes  
### concepts 概念 
 * http://www.infoq.com/cn/articles/Kubernetes-system-architecture-introduction?utm_campaign=infoq_content&utm_source=infoq&utm_medium=feed&utm_term=global  

### Sharding on kubernete
 * https://github.com/kubernetes/kubernetes/pull/13169
 * http://vitess.io/getting-started/

### jobs on kubernetes
 * https://github.com/kubernetes/kubernetes/issues/14188  


## openstack  
### release notes
 * https://wiki.openstack.org/wiki/ReleaseNotes/Liberty


### ironic bare-metal provisioning
 * https://www.mirantis.com/blog/bare-metal-provisioning-with-openstack-cloud/

### Openstack 架构
 * http://www.slideshare.net/mirantis/openstack-architecture-43160012

### Openstack 子项目
 * http://www.openstack.org/software/project-navigator/

### Openstack 解决方案设计
 * http://www.slideshare.net/mirantis/os-boston-meetuppreso10sept2014v2?related=1


### neutron 网络

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

#### Snapshot 镜像准备，备份，快照  
 * http://docs.openstack.org/developer/tripleo-docs/post_deployment/vm_snapshot.html
 * 下载系统镜像 http://docs.openstack.org/image-guide/obtain-images.html#official-ubuntu-images
 * 下载更改镜像 http://docs.openstack.org/image-guide/

### Trove 数据库 
 * 支持的数据库 https://github.com/openstack/trove/tree/master/trove/templates

### Zaqar 
 * 代码 https://github.com/openstack/zaqar

### Solum PaaS平台云
 * https://wiki.openstack.org/wiki/Solum/HighLevelRoadmap
 * Feature user stories https://wiki.openstack.org/wiki/Solum/FeatureBlueprints/ApplicationDeploymentAndManagement

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



### jenkins
 * https://github.com/openshift/jenkins-plugin
 * https://blog.openshift.com/continuous-integration-deployment-v3/
 * 

#### jenkins errors
 * http://stackoverflow.com/questions/25738061/java-nio-file-directorynotemptyexception-when-deleting-lastsuccessful-laststable
  - .file.DirectoryNotEmptyException 由于复制Jenkins目录造成
```

```

## vagrant
 *  下载box  https://vagrantcloud.com/boxes/search?utf8=%E2%9C%93&sort=&provider=&q=openshift
 *  base boxes http://www.vagrantbox.es/

# design prinsipals
## Service Design principals
 * https://github.com/kubernetes/kubernetes/blob/master/docs/design/principles.md
 * https://en.wikipedia.org/wiki/Service_level_objective

## micro services 微服务
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
 * Event sourcing
  - 海森堡bug http://www.infoq.com/cn/articles/exterminating-heisenbugs
  - https://github.com/eventstore/eventstore/wiki/Event-Sourcing-Basics
  - https://en.wikipedia.org/wiki/Domain-driven_design
  - http://eventuate.io/exampleapps.html


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



# database 数据库
## relational database 关系型数据库

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

### 
 * http://orientdb.com/orientdb-vs-neo4j/
 * http://db-engines.com/en/system/Neo4j%3BOrientDB

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

# graph editting
 * http://www.sitepoint.com/5-free-html5-presentation-systems/

## http://demo.qunee.com/#HierarchicLayouter%20Demo
# security
## cloud-security
## 安全名词
### cc攻击
http://baike.baidu.com/link?url=MRD3fyaa9_kNAf6-p9NSu4bU_UuO1YvDL6O5vsUqe_PFxYmNSV5CtNpmeb9Z6CpH5OJaHT1lLxWcBO7e_llve_
### high anti-DDoS DDoS高防

### ssh
 * http://www.cnblogs.com/lzjsky/archive/2010/11/14/1877143.html
 * http://stackoverflow.com/questions/1011572/convert-pem-key-to-ssh-rsa-format
### openssl

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

## coding problems
### Python problems
 * http://www.toptal.com/python/interview-questions
 * https://segmentfault.com/a/1190000000618513

## java
### maven
 * docker 安装 https://github.com/carlossg/docker-maven/blob/8ab542b907e69c5269942bcc0915d8dffcc7e9fa/jdk-8/Dockerfile

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
 * 替换sources.list 可使用/或%只要文本中不出现即可
```
sudo sed -i "s%archive.ubuntu.com%mirrors.aliyun.com%g" /etc/apt/sources.list
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
