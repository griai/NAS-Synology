
DOCKER_CONFIG=${DOCKER_CONFIG:-/usr/local/lib/docker}
DOCKER_COMPOSE_VERSION=${DOCKER_COMPOSE_VERSION:-v2.35.0}

mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-linux-aarch64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose

docker compose version
