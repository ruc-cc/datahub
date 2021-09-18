# 中国人民大学 DataHub 文档

## JupyterHub on Kubernetes

### 物理机资源

信息楼5楼机房

| IP           | hostname | 物理机位置 | k8s角色 | 密码                         |
| ------------ | -------- | ---------- | ------- | ---------------------------- |
| 10.77.80.241 | k8s-241  | 信息楼5楼  | Master  | IcEss@2019 （首字母为大写i） |
| 10.77.80.242 | k8s-242  | 信息楼5楼  | Worker  | IcEss@2019 （首字母为大写i） |
| 10.77.80.243 | k8s-243  | 信息楼5楼  | Worker  | IcEss@2019 （首字母为大写i） |

### Kubernetes部署

已有机器已经部署了Kubernetes v1.20.6，k8s安装部署方式参考[文档](https://kuboard.cn/install/history-k8s/install-k8s-1.20.x.html)。

同时部署了k8s可视化管理工具 Kuboard，访问地址：http://10.77.80.241:30080/ ,用户名：admin，密码：IcEss@2019。



### Helm

已在Master（10.77.80.241）上安装Helm，通过Helm管理和安装各类包。



### JupyterHub



### Ceph



