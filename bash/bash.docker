# Docker

export DOCKER_HOST="tcp://192.168.59.103:2376"
export DOCKER_CERT_PATH="/Users/mikeknepper/.boot2docker/certs/boot2docker-vm"
export DOCKER_TLS_VERIFY=1

docker-rm-all() {
  docker rm $(docker ps -a -q)
}

docker-rmi-all() {
  docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
}
