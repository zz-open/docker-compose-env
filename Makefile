include .env

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."
	@echo "    init_network             : 初始化网络，所有容器分配固定ip"
	@echo "    rm_all_containers        : 删除所有容器"
	@echo "    reset_docker        		: 重置docker"

test:
	@echo "test ..."

.PHONY: init_network
init_network:
	@echo ${DOCKER} network ls
	@echo ${DOCKER} network create --driver ${NETWORKS_DRIVER} --subnet=${FRONTEND_SUBNET} --gateway=${FRONTEND_SUBNET_GATEWAY} ${FRONTEND_NETWORK_NAME}
	@echo ${DOCKER} network create --driver ${NETWORKS_DRIVER} --subnet=${BACKEND_SUBNET} --gateway=${BACKEND_SUBNET_GATEWAY} ${BACKEND_NETWORK_NAME}
	@echo ${DOCKER} network ls

.PHONY: rm_all_containers prune_docker
rm_all_containers:
	@${DOCKER} ps -a -q | xargs ${DOCKER} rm -f

prune_docker:
	@${DOCKER} system prune -a
	@${DOCKER} network prune
	@${DOCKER} images prune -a
	@${DOCKER} volume prune -a

.PHONY: rm_single rm_proxy rm_fullstack rm_queue rm_registry rm_cluster
rm_single:
	@rm -rf ${DATA_HOST_PATH}/single
rm_proxy:
	@rm -rf ${DATA_HOST_PATH}/proxy
rm_fullstack:
	@rm -rf ${DATA_HOST_PATH}/fullstack
rm_queue:
	@rm -rf ${DATA_HOST_PATH}/queue
rm_registry:
	@rm -rf ${DATA_HOST_PATH}/registry
rm_cluster:
	@rm -rf ${DATA_HOST_PATH}/cluster
