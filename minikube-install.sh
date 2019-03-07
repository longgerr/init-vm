#!/bin/bash

PROXY_PARAM="--proxy http://10.38.24.10:802"

curl ${PROXY_PARAM} -Lo /tmp/minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x /tmp/minikube \
  && sudo cp /tmp/minikube /usr/local/bin && rm /tmp/minikube