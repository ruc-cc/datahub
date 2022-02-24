# NGINX for JupyterHub


```
# 创建nginx会用到的证书secret
kubectl create secret tls datahub-tls --key=/etc/cert-datahub/server.key --cert=/etc/cert-datahub/cert.pem -n jupyterhub
# nginx会用到的配置内容存入configmap
kubectl create cm nginx-cm --from-file=./nginx-daemon/nginx.conf -n jupyterhub
# 创建nginx的DaemonSet
kubectl create -f ./nginx-daemon/nginx-deamon.yaml -n jupyterhub
# 创建nginx对应pod的代理
kubectl create -f ./nginx-daemon/nginx-service.yaml -n jupyterhub
# 创建ingress进行域名映射
kubectl create -f ./nginx-daemon/ingress.yaml -n jupyterhub
```

