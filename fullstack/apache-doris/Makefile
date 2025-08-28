include .env
include ../../.cmd.env

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     			: Show help"
	@echo "    test                     			: Test ..."

test:
	@echo "test ..."

.PHONY: enter_apache_doris_fe enter_apache_doris_be
enter_apache_doris_fe:
	@${DC_ENTER} ${APACHE_DORIS_FE_CONTAINER_NAME} bash
enter_apache_doris_be:
	@${DC_ENTER} ${APACHE_DORIS_BE_CONTAINER_NAME} bash
