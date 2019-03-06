#!/bin/bash
docker run --rm -d -p 8888:8080 -p 50000:50000 --name jenkins -v jenkins_home:/var/jenkins_home jenkins:2.153
