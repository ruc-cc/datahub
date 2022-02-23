helm upgrade --install jupyterhub . --create-namespace -f values.yaml -n jupyterhub
kubectl create -f nfs-share-pvc.yaml -n jupyterhub
kubectl create secret tls datahub-tls --key=/etc/cert-datahub/server.key --cert=/etc/cert-datahub/cert.pem -n jupyterhub
kubectl create cm nginx-cm --from-file=nginx.conf -n jupyterhub
kubectl create -f nginx-deamon.yaml -n jupyterhub
kubectl create -f nginx-service.yaml -n jupyterhub
kubectl create -f ingress.yaml -n jupyterhub
