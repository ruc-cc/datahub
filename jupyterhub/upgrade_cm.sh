kubectl delete cm nginx-cm -n jupyterhub
kubectl create cm nginx-cm --from-file=./nginxDeamon/nginx.conf -n jupyterhub
kubectl delete ds nginx -n jupyterhub
kubectl create -f ./nginxDeamon/nginx-deamon.yaml -n jupyterhub
