helm upgrade --install jupyterhub . --create-namespace -f values.yaml -n jupyterhub
kubectl create -f ./shareDir/nfs-share-pvc.yaml -n jupyterhub
kubectl create secret tls datahub-tls --key=/etc/cert-datahub/server.key --cert=/etc/cert-datahub/cert.pem -n jupyterhub
kubectl create cm nginx-cm --from-file=./nginxDeamon/nginx.conf -n jupyterhub
kubectl create -f ./nginxDeamon/nginx-deamon.yaml -n jupyterhub
kubectl create -f ./nginxDeamon/nginx-service.yaml -n jupyterhub
kubectl create -f ./nginxDeamon/ingress.yaml -n jupyterhub
