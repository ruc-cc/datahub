# 中国人民大学 DataHub 文档

## JupyterHub on Kubernetes

### 物理机资源

| IP           | hostname | 物理机位置  | k8s 角色 | 密码                                |
| ------------ | -------- | ----------- | -------- | ----------------------------------- |
| 10.77.80.241 | k8s-241  | 信息楼 5 楼 | Master   | root: IcEss@2019 （首字母为大写 i） |
| 10.77.80.242 | k8s-242  | 信息楼 5 楼 | Worker   | root: IcEss@2019 （首字母为大写 i） |
| 10.77.80.243 | k8s-243  | 信息楼 5 楼 | Worker   | root: IcEss@2019 （首字母为大写 i） |

### Kubernetes 部署

已有机器已经部署了 Kubernetes v1.20.6，k8s 安装部署方式参考[文档](https://kuboard.cn/install/history-k8s/install-k8s-1.20.x.html)。

同时部署了 k8s 可视化管理工具 Kuboard，访问地址：http://10.77.80.241:30080/ ,用户名：admin，密码：IcEss@2019。

### Helm

已在 Master（10.77.80.241）上安装 Helm，通过 Helm 管理和安装各类包。

### JupyterHub

### Datahub Notebook

从 [base-notebook](https://github.com/jupyter/docker-stacks/tree/master/base-notebook) 的 dockerfile 构建 datahub 镜像，修改用户名 `jovyan` 为 `datahub`，用户 UID 等保持不变。

已发布在https://hub.docker.com/repository/docker/jiangliuyang/datahub

设置 jupyterhub/values.yaml

```yaml
singleuser:
  # 设置镜像
  image:
    name: jiangliuyang/datahub
    tag: 1.1.3.2
```

### Ceph
