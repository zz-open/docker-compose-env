ARG RABBITMQ_VERSION=latest
FROM rabbitmq:${RABBITMQ_VERSION}-management-alpine

LABEL maintainer="zz <373045134@qq.com>"

RUN rabbitmq-plugins enable --offline rabbitmq_mqtt rabbitmq_federation_management rabbitmq_stomp
RUN rabbitmq-plugins enable rabbitmq_management
RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange
RUN rabbitmq-plugins enable rabbitmq_tracing
