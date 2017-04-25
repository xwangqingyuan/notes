# federation
## create cluster
```
kubefed init fellowship \
    --host-cluster-context=minikube \
    --dns-provider="coredns" \
    --dns-zone-name="example.com." \
    --api-server-service-type="NodePort" \
    --api-server-advertise-address="192.168.99.100"
# display current context
kubectl config current-context
default/192-168-1-94:8443/admin
# add a cluster
kubefed join '192-168-1-94:8443' --host-cluster-context=default/192-168-1-94:8443/admin
kubefed join 'minikube' --host-cluster-context=minikube
#
```
## run deployment
```
kubectl --context=federation-cluster run --image=nginx
```
