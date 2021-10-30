FROM jupyterhub/k8s-singleuser-sample:1.1.3
USER root
RUN useradd -u 1001 --create-home --no-log-init --shell /bin/bash datahub
# RUN adduser datahub sudo
RUN echo 'datahub:passwd-datahub' | chpasswd
USER datahub
WORKDIR /home/datahub
