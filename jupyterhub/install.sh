helm upgrade --install jupyterhub . --create-namespace -f values.yaml -n jupyterhub
kubectl create -f ceph-share-pvc.yaml -n jupyterhub
kubectl create -f ingress.yaml -n jupyterhub