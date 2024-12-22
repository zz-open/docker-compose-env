ARG MYSQL_VERSION=5.7.43
FROM bitnami/mysql:${MYSQL_VERSION}

LABEL maintainer="zz <373045134@qq.com>"

#####################################
# Set Timezone
#####################################

COPY ./my.cnf /etc/mysql/conf.d/my.cnf

EXPOSE 3306
