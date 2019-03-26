#!/bin/bash

http_proxy="http://10.38.24.10:802/"
https_proxy="http://10.38.24.10:802/"

CONF_FOLDER="/etc/systemd/system/docker.service.d"
HTTP_PROXY_CONF="${CONF_FOLDER}/http-proxy.conf"
HTTPS_PROXY_CONF="${CONF_FOLDER}/https-proxy.conf"

mkdir -p ${CONF_FOLDER}

# cat <<EOF >${HTTP_PROXY_CONF}
# [Service]
# Environment="http_proxy=${http_proxy}"
# EOF

cat <<EOF >${HTTPS_PROXY_CONF}
[Service]
Environment="https_proxy=${https_proxy}"
EOF

systemctl daemon-reload
systemctl restart docker
systemctl show --property=Environment docker