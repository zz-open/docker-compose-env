include ../../.env
include .env

CONTAINERS=${MANAGEMENT_CONTAINER_NAME} ${DATA_CONTAINER_NAME_NODE1} ${DATA_CONTAINER_NAME_NODE2} ${DATA_CONTAINER_NAME_NODE3} ${DATA_CONTAINER_NAME_NODE4} ${SQL_HOSTNAME_NODE1} ${SQL_HOSTNAME_NODE2}

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."
	@echo "    build                    : build"
	@echo "    start                    : 启动所有服务"

test:
	@echo "test ..."

.PHONY: build start reset start_pma
build:
	@${DC_BUILD} ${CONTAINERS}
reset:
	@${DC_STOP}
	rm -rf ${DATA_HOST_PATH}/${MANAGEMENT_CONTAINER_NAME}
	rm -rf ${DATA_HOST_PATH}/${DATA_CONTAINER_NAME_NODE1}
	rm -rf ${DATA_HOST_PATH}/${DATA_CONTAINER_NAME_NODE2}
	rm -rf ${DATA_HOST_PATH}/${DATA_CONTAINER_NAME_NODE3}
	rm -rf ${DATA_HOST_PATH}/${DATA_CONTAINER_NAME_NODE4}
	rm -rf ${DATA_HOST_PATH}/${SQL_HOSTNAME_NODE1}
	rm -rf ${DATA_HOST_PATH}/${SQL_HOSTNAME_NODE2}
	@${DC_DOWN}

start:
	@${DC_UP} -d ${CONTAINERS}

start_pma:
	@${DC_UP} -d ${PMA_CONTAINER_NAME}

.PHONY: enter-sql1 enter-sql2 pasword
enter-sql1:
	@${DC_EXEC} ${SQL_CONTAINER_NAME_NODE1} /bin/sh

enter-sql2:
	@${DC_EXEC} ${SQL_CONTAINER_NAME_NODE2} /bin/sh

pasword:
	@${DC_LOGS} ${SQL_HOSTNAME_NODE1} | grep "GENERATED ROOT PASSWORD"
