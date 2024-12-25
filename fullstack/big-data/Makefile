include ../../.env
include .env

CONTAINERS=${STARROCKS_CONTAINER_NAME}

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."
	@echo "    build      				: build"
	@echo "    start                    : 启动所有服务"

test:
	@echo "test ..."

.PHONY: build start
build:
	@${DC_BUILD} ${CONTAINERS}

start:
	@${DC_UP} ${CONTAINERS}

.PHONY: download_test_csv
download_test_csv:
	@echo "下载纽约市交通事故数据\n"
	# @curl -O https://raw.githubusercontent.com/StarRocks/demo/master/documentation-samples/quickstart/datasets/NYPD_Crash_Data.csv
	@echo "下载天气数据\n"
	@curl -O https://raw.githubusercontent.com/StarRocks/demo/master/documentation-samples/quickstart/datasets/72505394728.csv
