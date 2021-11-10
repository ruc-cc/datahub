# Base Jupyter Notebook Stack

[![docker pulls](https://img.shields.io/docker/pulls/jupyter/base-notebook.svg)](https://hub.docker.com/r/jupyter/base-notebook/)
[![docker stars](https://img.shields.io/docker/stars/jupyter/base-notebook.svg)](https://hub.docker.com/r/jupyter/base-notebook/)
[![image size](https://img.shields.io/docker/image-size/jupyter/base-notebook/latest)](https://hub.docker.com/r/jupyter/base-notebook/ "jupyter/base-notebook image size")

GitHub Actions in the <https://github.com/jupyter/docker-stacks> project builds and pushes this image to Docker Hub.

Please visit the project documentation site for help using and contributing to this image and others.

- [Jupyter Docker Stacks on ReadTheDocs](https://jupyter-docker-stacks.readthedocs.io/en/latest/index.html)
- [Selecting an Image :: Core Stacks :: jupyter/base-notebook](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-base-notebook)

# Reference

See more information: [base-notebook](https://github.com/jupyter/docker-stacks/tree/master/base-notebook)

# Change Log

- Change username from `jovyan` to `datahub`.

# Build

```bash
# build image
docker build -t {user-name}/{image-name}:{tag} .
# deploy image
docker push {user-name}/{image-name}:{tag}
```

For example:

```bash
# build image
docker build -t jiangliuyang/datahub:1.1.3 .
# deploy image
docker push jiangliuyang/datahub:1.1.3
```

And then change the `singleuser.image` in `value.yaml`.
