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

## Docker  

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

### Swift    
#### Swift performance
 * http://www.gossamer-threads.com/lists/openstack/dev/38588
 * https://blog.zhaw.ch/icclab/evaluating-the-performance-of-ceph-and-swift-for-object-storage-on-small-clusters/
 * 

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



# design prinsipals
## Service Design principals
* https://github.com/kubernetes/kubernetes/blob/master/docs/design/principles.md
* https://en.wikipedia.org/wiki/Service_level_objective
*





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


# github
## github-commands
```
git add . && git commit -m "Add all content of $(pwd)" && git push
```
# security
## cloud-security
## 安全名词
### cc攻击
http://baike.baidu.com/link?url=MRD3fyaa9_kNAf6-p9NSu4bU_UuO1YvDL6O5vsUqe_PFxYmNSV5CtNpmeb9Z6CpH5OJaHT1lLxWcBO7e_llve_
### high anti-DDoS DDoS高防
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
## Go
### 学习
 * learn by example https://gobyexample.com/
 * https://tour.golang.org/basics/1
## coding problems
### Python problems
 * http://www.toptal.com/python/interview-questions
 * https://segmentfault.com/a/1190000000618513

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

