kubectl delete cm nginx-cm -n jupyterhub
kubectl create cm nginx-cm --from-file=nginx.conf -n jupyterhub
kubectl delete ds nginx -n jupyterhub
kubectl create -f nginx-deamon.yaml -n jupyterhub
