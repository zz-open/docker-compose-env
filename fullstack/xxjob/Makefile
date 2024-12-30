include ../../.env
include .env

CONTAINERS=${MYSQL_CONTAINER_NAME} ${XXJOB_CONTAINER_NAME} 

.PHONY: help test build start
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."
	@echo "    build      				: 构建所有服务"
	@echo "    start                    : 启动所有服务"

test:
	@echo "test ..."
