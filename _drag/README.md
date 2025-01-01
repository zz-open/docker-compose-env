# docker-env
- [docker-compose 文档](https://docs.docker.com/compose/compose-file/)
- [清华源 docker](https://mirrors.tuna.tsinghua.edu.cn/help/docker-ce/)
- [阿里源 docker](https://developer.aliyun.com/mirror/docker-ce?spm=a2c6h.13651102.0.0.57e31b11IGkBRU)
- [网易源 docker](https://mirrors.163.com/docker-ce)
- [火山源 docker](https://developer.volcengine.com/articles/7119384305456906277)

- [网易源 debian](https://mirrors.163.com/.help/debian.html)
- [北大源 debian](https://mirrors.pku.edu.cn/Help/Debian)
- [清华源源 debian](https://mirrors.tuna.tsinghua.edu.cn/help/debian/)
- [清华源 ubuntu](https://mirrors.tuna.tsinghua.edu.cn/help/ubuntu/)
- [清华源 centos](https://mirrors.tuna.tsinghua.edu.cn/help/centos/)
- [清华源 alpine](https://mirrors.tuna.tsinghua.edu.cn/help/alpine/)

Full Stack development environment based on Docker Compose.

# 如何使用
## 初始化网络
```shell
make init_network
```
- backend: 后端服务网络
- frontend: 前端服务网络（备用网络，可忽略）

数据目录存放在： ~/.docker-env
日志目录存放在： containers/logs

## 关于Makefile
项目使用Makefile管理常用命令

## 关于.env
可以创建.env.local覆盖已定义好的变量

## 为docker compose创建别名
```shell
make append_alias

source ~/.zshrc
```

## 启动服务
如果使用了.env.local，则替换命令为`dcel`，否则使用`dce`
```shell
cd standalone

# 启动 mysql5.7
dce start-mysql57

# 启动 redis
dce start-redis
```

# 服务清单
## STANDALONE
单体服务, 172.21.4.3开始

| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| portainer | 172.21.4.3 | 172.20.4.3 | latest | |
| busybox | 172.21.4.4 | 172.20.4.4 | latest | |
| mysql57 | 172.21.4.5 | 172.20.4.5 | 5.7 | |
| mysql8 | 172.21.4.6 | 172.20.4.6 | 8.0~8.3 | |
| mysql | 172.21.4.46 | 172.20.4.46 | 8.4~9.0 | |
| redis | 172.21.4.7 | 172.20.4.7 | latest | |
| memcached | 172.21.4.8 | 172.20.4.8 | 1.6.23 | |
| postgres | 172.21.4.9 | 172.20.4.9 | 16.2 | |
| mongo | 172.21.4.10 | 172.20.4.10 | 7.0.5 | |
| tomcat8 | 172.21.4.11 | 172.20.4.11 | 8.5.99 | 待定 |
| postgres-postgis | 172.21.4.12 | 172.20.4.12 | latest | |
| pgadmin | 172.21.4.13 | 172.20.4.13 | latest | |
| phpmyadmin | 172.21.4.14 | 172.20.4.14 | 5.2.1 | |
| soketi | 172.21.4.15 | 172.20.4.15 | latest | 待定 |
| caddy | 172.21.4.16 | 172.20.4.16 | latest | 待定 |
| beanstalkd | 172.21.4.17 | 172.20.4.17 | latest | 待定 |
| beanstalkd-console | 172.21.4.18 | 172.20.4.18 | latest | 待定 |
| traefik | 172.21.4.19 | 172.20.4.19 | v2.5 | 待定 |
| certbot | 172.21.4.20 | 172.20.4.20 | latest | 待定 |
| mongo-webui | 172.21.4.21 | 172.20.4.21 | latest | 待定 |
| zookeeper | 172.21.4.22 | 172.20.4.22 | 3.9.1 | |
| zoonavagitor | 172.21.4.23 | 172.20.4.23 | latest | |
| rocketmq-dashboard | 172.21.4.24 | 172.20.4.24 | latest | |
| rocketmq-broker | 172.21.4.25 | 172.20.4.25 | 5.1 | |
| rocketmq-namesrv | 172.21.4.26 | 172.20.4.26 | 5.1 | |
| rabbitmq | 172.21.4.27 | 172.20.4.27 | 3.12 | |
| kafka-ui | 172.21.4.28 | 172.20.4.28 | latest | |
| kafka | 172.21.4.29 | 172.20.4.29 | 3.6 | |
| kafka-z | 172.21.4.30 | 172.20.4.30 | 3.6 | |
| etcd-ui | 172.21.4.31 | 172.20.4.31 | latest | |
| etcd | 172.21.4.32 | 172.20.4.32 | v3.5.2 | |
| nats-box | 172.21.4.33 | 172.20.4.33 | latest | |
| nats | 172.21.4.34 | 172.20.4.34 | 2.10.11 | |
| pulsar-manager | 172.21.4.35 | 172.20.4.35 | 0.4.0 |
| pulsar | 172.21.4.36 | 172.20.4.36 | latest |
| nsqadmin | 172.21.4.37 | 172.20.4.37 | latest | |
| nsqlookupd | 172.21.4.38 | 172.20.4.38 | latest | |
| nsqd | 172.21.4.39 | 172.20.4.39 | latest | |
| dtm | 172.21.4.40 | 172.20.4.40 | latest |
| nacos | 172.21.4.41 | 172.20.4.41 | v2.3.0 | |
| mssql | 172.21.4.42 | 172.20.4.42 | 2022 | |
| nginx | 172.21.4.43 | 172.20.4.43 | latest | |
| jdk17 | 172.21.4.44 | 172.20.4.44 | 17 | |
| jdk8 | 172.21.4.45 | 172.20.4.45 | 8 | |
| node | 172.21.4.47 | 172.20.4.47 | node20 | |

## CLUSTER
集群环境, 172.21.2.3开始

### RABBITMQ CLUSTER (172.21.2.3) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| rabbitmq1 | 172.21.2.3 | 172.20.2.3 | 3.12 | |
| rabbitmq2 | 172.21.2.4 | 172.20.2.4 | 3.12 | |
| rabbitmq3 | 172.21.2.5 | 172.20.2.5 | 3.12 | |

### KAFKA KRAFT CLUSTER (172.21.2.13) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| krc-kafka-ui | 172.21.2.13 | 172.20.2.210 | 3.6 | |
| krc-kafka1 | 172.21.2.13 | 172.20.2.211 | 3.6 | |
| krc-kafka2 | 172.21.2.13 | 172.20.2.212 | 3.6 | |
| krc-kafka3 | 172.21.2.13 | 172.20.2.213 | 3.6 | |
| krc-kafka4 | 172.21.2.13 | 172.20.2.214 | 3.6 | |
| krc-kafka5 | 172.21.2.13 | 172.20.2.215 | 3.6 | |
| krc-kafka6 | 172.21.2.13 | 172.20.2.216 | 3.6 | |

### KAFKA CLUSTER (172.21.2.30) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| kc-kafka-ui | 172.21.2.220 | 172.20.2.220 | latest | |
| kc-zoonavagitor | 172.21.2.221 | 172.20.2.221 | | |
| kc-zoo | 172.21.2.222 | 172.20.2.222 | latest | |
| kc-kafka1 | 172.21.2.223 | 172.20.2.223 | latest | |
| kc-kafka2 | 172.21.2.224 | 172.20.2.224 | latest | |
| kc-kafka3 | 172.21.2.225 | 172.20.2.225 | latest | |
| kc-kafka4 | 172.21.2.226 | 172.20.2.226 | latest | |
| kc-kafka5 | 172.21.2.227 | 172.20.2.227 | latest | |
| kc-kafka6 | 172.21.2.228 | 172.20.2.228 | latest | |

### ROCKETMQ CLUSTER (172.21.2.50) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| rocketmq-dashboard | 172.21.2.11 | 172.20.2.11 | latest | |
| rocketmq-c-namesrv1 | 172.21.2.11 | 172.20.2.3 | latest | |
| rocketmq-c-namesrv2 | 172.21.2.11 | 172.20.2.4 | latest | |
| rocketmq-c-namesrv3 | 172.21.2.11 | 172.20.2.5 | latest | |
| rocketmq-c-proxy1 | 172.21.2.11 | 172.20.3.6 | latest | |
| rocketmq-c-proxy2 | 172.21.2.11 | 172.20.3.7 | latest | |
| rocketmq-c-proxy3 | 172.21.2.11 | 172.20.3.8 | latest | |
| rocketmq-c-controller1 | 172.21.2.11 | 172.20.3.9 | latest | |
| rocketmq-c-controller2 | 172.21.2.11 | 172.20.3.10 | latest | |
| rocketmq-c-controller3 | 172.21.2.11 | 172.20.3.11 | latest | |
| rocketmq-c-broker1 | 172.21.2.11 | 172.20.3.12 | latest | |
| rocketmq-c-broker2 | 172.21.2.11 | 172.20.3.13 | latest | |
| rocketmq-c-broker3 | 172.21.3.14 | 172.20.3.14 | latest | |
| rocketmq-c-broker4 | 172.21.3.15 | 172.20.3.15 | latest | |
| rocketmq-c-broker5 | 172.21.3.16 | 172.20.3.16 | latest | |
| rocketmq-c-broker6 | 172.21.3.17 | 172.20.3.17 | latest | |

### Pulsar Cluster (172.21.2.70) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| pulsar-manager | 172.21.2.82 | 172.20.2.82 | 0.4.0 |
| pulsar-zookeeper | 172.21.2.81 | 172.20.2.81 | latest |
| pulsar-init | 172.21.2.80 | 172.20.2.80 | latest |
| pulsar-bookie1 | 172.21.2.83 | 172.20.2.83 | latest |
| pulsar-bookie2 | 172.21.2.84 | 172.20.2.84 | latest |
| pulsar-bookie3 | 172.21.2.85 | 172.20.2.85 | latest |
| pulsar-broker1 | 172.21.2.86 | 172.20.2.86 | latest |
| pulsar-broker2 | 172.21.2.87 | 172.20.2.87 | latest |
| pulsar-broker3 | 172.21.2.88 | 172.20.2.88 | latest |

### NSQ CLUSTER (172.21.2.90) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nsqadmin | 172.21.2.110 | 172.20.2.110 | latest | |
| nsqlookupd1 | 172.21.2.111 | 172.20.2.111 | latest | |
| nsqlookupd2 | 172.21.2.112 | 172.20.2.112 | latest | |
| nsqlookupd3 | 172.21.2.113 | 172.20.2.113 | latest | |
| nsqd1 | 172.21.2.101 | 172.20.2.101 | latest | |
| nsqd2 | 172.21.2.101 | 172.20.2.101 | latest | |
| nsqd3 | 172.21.2.101 | 172.20.2.101 | latest | |

### NATS CLUSTER (172.21.2.100) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nats-box | 172.21.2.240 | 172.20.2.240 | latest | |
| nats1 | 172.21.2.241 | 172.20.2.241 | latest | |
| nats2 | 172.21.2.242 | 172.20.2.242 | latest | |
| nats3 | 172.21.2.243 | 172.20.2.243 | latest | |

### ETCD CLUSTER (172.21.2.110) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| ec-etcd-ui | 172.21.2.170 | 172.20.2.170 | | |
| ec-etcd1 | 172.21.2.171 | 172.20.2.171 | v3.5.2 | |
| ec-etcd2 | 172.21.2.172 | 172.20.2.172 | v3.5.2 | |
| ec-etcd3 | 172.21.2.173 | 172.20.2.173 | v3.5.2 | |

### ZOOKEEPER CLUSTER (172.21.2.120) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| zc-zoonavagitor | 172.21.2.190 | 172.20.2.190 | | |
| zookeeper1 | 172.21.2.191 | 172.20.2.191 | latest | |
| zookeeper2 | 172.21.2.192 | 172.20.2.192 | latest | |
| zookeeper3 | 172.21.2.193 | 172.20.2.193 | latest | |

### DTM CLUSTER (172.21.2.130) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| dtm-mysql | 172.21.3.80 | 172.20.3.80 | latest |
| dtm-redis | 172.21.3.81 | 172.20.3.81 | latest |
| dtm1 | 172.21.3.82 | 172.20.3.82 | latest |
| dtm2 | 172.21.3.83 | 172.20.3.83 | latest |
| dtm3 | 172.21.3.84 | 172.20.3.84 | latest |

### MEMCACHED CLUSTER (172.21.2.140) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| memcached1 | 172.21.3.180 | 172.20.3.180 | latest | |
| memcached2 | 172.21.3.181 | 172.20.3.181 | latest | |
| memcached3 | 172.21.3.182 | 172.20.3.182 | latest | |
| haproxy1 | 172.21.3.183 | 172.20.3.183 | latest | |

### MINIO CLUSTER (172.21.2.150) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nginx | 172.21.3.140 | 172.20.3.140 | latest | |
| minio1 | 172.21.3.141 | 172.20.3.141 | latest | |
| minio2 | 172.21.3.142 | 172.20.3.142 | latest | |
| minio3 | 172.21.3.143 | 172.20.3.143 | latest | |

### REDIS MSR (172.21.2.160) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| redis_1 | 172.21.3.180 | 172.20.3.180 | latest | |
| redis_2 | 172.21.3.181 | 172.20.3.181 | latest | |
| redis_3 | 172.21.3.182 | 172.20.3.182 | latest | |
| redis_4 | 172.21.3.183 | 172.20.3.183 | latest | |
| sentinel1 | 172.21.3.184 | 172.20.3.184 | latest | |
| sentinel2 | 172.21.3.185 | 172.20.3.185 | latest | |
| sentinel3 | 172.21.3.186 | 172.20.3.186 | latest | |

### REDIS CLUSTER (172.21.2.170) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| redis-box | 172.21.3.190 | 172.20.3.190 | latest | |
| redis1 | 172.21.3.191 | 172.20.3.191 | latest | |
| redis2 | 172.21.3.192 | 172.20.3.192 | latest | |
| redis3 | 172.21.3.193 | 172.20.3.193 | latest | |
| redis4 | 172.21.3.194 | 172.20.3.194 | latest | |
| redis5 | 172.21.3.195 | 172.20.3.195 | latest | |
| redis6 | 172.21.3.196 | 172.20.3.196 | latest | |
| redis7 | 172.21.3.197 | 172.20.3.197 | latest | |
| redis8 | 172.21.3.198 | 172.20.3.198 | latest | |
| redis9 | 172.21.3.199 | 172.20.3.199 | latest | |

### NACOS CLUSTER (172.21.2.190) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nacos1 | 172.21.3.211 | 172.20.3.211 | latest | |
| nacos2 | 172.21.3.211 | 172.20.3.211 | latest | |
| nacos3 | 172.21.3.211 | 172.20.3.211 | latest | |

### ELASTIC CLUSTER (172.21.2.200) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| es-setup | 172.21.2.200 | 172.20.2.200 | latest |
| kibana | 172.21.2.201 | 172.20.2.201 | latest |
| es01 | 172.21.2.202 | 172.20.2.202 | latest |
| es02 | 172.21.2.203 | 172.20.2.203 | latest |
| es03 | 172.21.2.204 | 172.20.2.204 | latest |


## STACK
集成环境, 172.21.3.3 开始, 例如lamp, lnmp等 

### DEVOPS (172.21.3.3) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| gitlab | 172.21.3.3 | 172.20.3.3 | latest | |
| gitlab-runner | 172.21.3.4 | 172.20.3.4 | latest | |
| jenkins | 172.21.3.5 | 172.20.3.5 | latest | |
| devops-postgres | 172.21.3.6 | 172.20.3.6 | latest | |
| devops-redis | 172.21.3.7 | 172.20.3.7 | latest | |
| application | 172.21.3.8 | 172.20.3.8 | latest | |
| promethus | 172.21.3.6 | 172.20.3.6 | latest | |
| grafana | 172.21.3.7 | 172.20.3.7 | latest | |

### Spider (172.21.3.50) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| mysql | 172.21.3.50 | 172.20.3.50 | latest |
| redis | 172.21.3.51 | 172.20.3.51 | latest |
| mongo | 172.21.3.52 | 172.20.3.52 | latest |

### ELK (172.21.3.60) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| es-init | 172.21.3.60 | 172.20.3.60 | latest |
| es | 172.21.3.61 | 172.20.3.61 | latest |
| kibana | 172.21.3.62 | 172.20.3.62 | latest |
| logstash | 172.21.3.63 | 172.20.3.63 | latest |
| elk-box | 172.21.3.64 | 172.20.3.64 | latest |
| filebeat | 172.21.3.65 | 172.20.3.65 | latest |
| go-stash | 172.21.3.66 | 172.20.3.66 | latest |

### TRAEFIK (172.21.3.70) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| traefik | 172.21.3.70 | 172.20.3.70 | latest |
| app1 | 172.21.3.71 | 172.20.3.71 | latest |
| app2 | 172.21.3.72 | 172.20.3.72 | latest |
| app3 | 172.21.3.73 | 172.20.3.73 | latest |

### LNMP (172.21.3.80) [废弃]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nginx | 172.21.3.80 | 172.20.3.80 | latest |
| php-fpm | 172.21.3.81 | 172.20.3.81 | latest |

### LAMP (172.21.3.90) [废弃]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| apache | 172.21.3.90 | 172.20.3.90 | latest |
| php-fpm | 172.21.3.91 | 172.20.3.91 | latest |

### ZN-LAMP (172.21.3.93) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| php5.6.40+apache | 172.21.3.93 | 172.20.3.93 | php5.6.40, 支持arm64 |

### XXJOB (172.21.3.100) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| xxjob | 172.21.3.100 | 172.20.3.100 | xxjob, 支持arm64 |
| xxjob-mysql | 172.21.3.101 | 172.20.3.101 | mysql8.3 |

### METING API (172.21.3.110) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| meting-api | 172.21.3.110 | 172.20.3.110 | latest |
| caddy | 172.21.3.111 | 172.20.3.111 | latest |


## MIDDLEWARE
多版本容器，比如mysql5.7, mysql8.0, redis3.2, redis5.0等 

| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| mysql57 | 172.21.4.5 | 172.20.4.5 | 5.7 | |
| mysql8 | 172.21.4.6 | 172.20.4.6 | 8.0~8.3 | |
| mysql | 172.21.4.46 | 172.20.4.46 | 8.4~9.0 | |
| redis | 172.21.4.7 | 172.20.4.7 | latest | |
