ARG XXJOB_VERSION=latest
FROM xuxueli/xxl-job-admin:${XXJOB_VERSION} AS builder

LABEL maintainer="zz <373045134@qq.com>"

FROM openjdk:8-jre-slim

COPY --from=builder /app.jar /app.jar

ENV PARAMS=""
ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENTRYPOINT ["sh","-c","java -jar $JAVA_OPTS /app.jar $PARAMS"]
