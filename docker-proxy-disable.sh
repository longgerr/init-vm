#!/bin/sh

CONF_FOLDER="/etc/systemd/system/docker.service.d"
HTTPS_PROXY_CONF="${CONF_FOLDER}/https-proxy.conf"

rm -f ${HTTPS_PROXY_CONF}

systemctl daemon-reload
systemctl restart docker
systemctl show --property=Environment docker