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