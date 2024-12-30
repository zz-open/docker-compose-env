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
	@echo ${DC_EXEC}

.PHONY: copy_apache_conf
copy_apache_conf:
	@docker run --rm httpd:2.4 cat /usr/local/apache2/conf/httpd.conf > my-httpd.conf
	@docker run --rm -v ./htdocs/:/usr/local/apache2/htdocs/ httpd:2.4
