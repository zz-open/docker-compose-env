include ../.env
include .env

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."

test:
	@echo "test ..."

.PHONY: download_redis_conf
download_redis_conf:
	@wget -O "./redis.conf" "https://github.com/redis/redis/blob/7.2/redis.conf"
	
# create_my_cnf:
# 	@docker run --rm bitnami:2.4 cat /usr/local/apache2/conf/httpd.conf > my-httpd.conf

.PHONY: rm_mysql57 rm_mysql8 rm_redis rm_redis_stack
rm_mysql57:
	@rm -rf ${DATA_HOST_PATH}/${MYSQL57_CONTAINER_NAME}
rm_mysql8:
	@rm -rf ${DATA_HOST_PATH}/${MYSQL8_CONTAINER_NAME}
rm_redis:
	@rm -rf ${DATA_HOST_PATH}/${REDIS_CONTAINER_NAME}
rm_redis_stack:
	@rm -rf ${DATA_HOST_PATH}/${REDIS_STACK_CONTAINER_NAME}
