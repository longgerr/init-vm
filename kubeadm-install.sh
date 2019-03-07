#!/bin/bash

http_proxy="http://10.38.24.10:802"
https_proxy="http://10.38.24.10:802"
PROXY_PARAM="--proxy $http_proxy"
PROXY_APT_CONF="/etc/apt/apt.conf.d/proxy.conf"

cat <<EOF >${PROXY_APT_CONF}
Acquire::http::Proxy "${http_proxy}";
Acquire::https::Proxy "${http_proxy}";
EOF

cat ${PROXY_APT_CONF}

apt-get update && apt-get install -y apt-transport-https curl
curl ${PROXY_PARAM} -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update
apt-get install -y kubelet kubeadm kubectl
# apt-mark hold kubelet kubeadm kubectl

rm ${PROXY_APT_CONF}