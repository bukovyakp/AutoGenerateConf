#!/bin/bash

source env.sh
rm -rf docker-compose.yml
envsubst < "template.yml" > "docker-compose.yml"


source LicenseKey
rm -rf /home/ubuntu/GenerateDockerCompose/conf/config.yml
envsubst < "template_config.yml" > "/home/ubuntu/GenerateDockerCompose/conf/config.yml"

