include _common/common.mk
include _common/.env

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."
	@echo "    init_network             : 初始化网络，所有项目使用同一个子网"
	@echo "    init_data_dir            : 初始化数据目录"

test:
	@echo "test ..."

.PHONY: init_network init_data_dir init_mysql_data_dir download_redis_conf reset_docker
init_network:
	@${DOCKER} network create --driver ${NETWORKS_DRIVER} --subnet=${FRONTEND_SUBNET} --gateway=${FRONTEND_SUBNET_GATEWAY} ${FRONTEND_NETWORK_NAME}
	${DOCKER} network create --driver ${NETWORKS_DRIVER} --subnet=${BACKEND_SUBNET} --gateway=${BACKEND_SUBNET_GATEWAY} ${BACKEND_NETWORK_NAME}
	${DOCKER} network ls

init_data_dir:
	@mkdir -p ${DATA_PATH_HOST} && chmod 777 -R ${DATA_PATH_HOST}
	echo -e "创建数据目录成功 \n"

init_mysql_data_dir:
	@mkdir -p ${DATA_PATH_HOST}/mysql && \
	mkdir -p ${DATA_PATH_HOST}/mysql57 && \
	chmod 777 -R ${DATA_PATH_HOST}/mysql && \
	chmod 777 -R ${DATA_PATH_HOST}/mysql57
	echo -e "创建 mysql, mysql57 数据目录成功 \n"

download_redis_conf:
	@wget -O "./redis.conf" "https://github.com/redis/redis/blob/7.2/redis.conf"

reset_docker:
	@${DOCKER} system prune -a
	${DOCKER} network prune -a
	${DOCKER} image purge -a
	${DOCKER} volume prune -a