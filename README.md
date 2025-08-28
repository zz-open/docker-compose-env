# docker-compose-env
Full Stack development environment based on Docker Compose.

# 服务清单
## Single (单机服务)
172.21.4.3 start

| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&check;] | portainer | 172.21.4.3 | 172.20.4.3 | 2.25.1-alpine | 127.0.0.1:19000 打开控制台 |
| [&check;] | busybox | 172.21.4.4 | 172.20.4.4 | latest | |
| [&check;] | mysql57 | 172.21.4.5 | 172.20.4.5 | 5.7 | |
| [&check;] | mysql8 | 172.21.4.6 | 172.20.4.6 | 8.0~8.3 | 默认是 8.3 |
| [&check;] | redis | 172.21.4.7 | 172.20.4.7 | 7.4 | |
| [&check;] | redis-stack | 172.21.4.8 | 172.20.4.8 | 7.4.0-v1 | |
| [&check;] | memcached | 172.21.4.9 | 172.20.4.9 | 1.6.33 | |
| [&check;] | mongo | 172.21.4.10 | 172.20.4.10 | 7.0.5 | |
| [&check;] | mongo-webui | 172.21.4.11 | 172.20.4.11 | latest | |
| [&check;] | phpmyadmin | 172.21.4.12 | 172.20.4.12 | 5.2.1 | |
| [&cross;] | postgres | 172.21.4.13 | 172.20.4.13 | 16.2 | |
| [&cross;] | pgadmin | 172.21.4.14 | 172.20.4.14 | latest | |
| [&cross;] | postgres-postgis | 172.21.4.15 | 172.20.4.15 | latest | |

## Proxy (静态代理服务) 
172.21.5.3 start

| 状态 | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&check;] | nginx | 172.21.5.3 | 172.20.5.3 | 1.27 | |
| [&check;] | apache | 172.21.5.4 | 172.20.5.4 | 2.4 | |
| [&check;] | caddy | 172.21.5.5 | 172.20.5.5 | 2.9 | |
| [&cross;] | traefik | 172.21.5.6 | 172.20.5.6 | latest | |

## FullStack (全栈式集成服务)
172.21.6.3 start

### Meting Api (172.21.6.3~172.21.6.4)
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&check;] | meting-api | 172.21.6.3 | 172.20.6.3 | latest | |
| [&check;] | caddy | 172.21.6.4 | 172.20.6.4 | latest | | |

### Xxjob (172.21.6.10~172.21.6.11) [完成]
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&check;] | xxjob | 172.21.6.10 | 172.20.6.10 | xxjob, 支持arm64 | |
| [&check;] | xxjob-mysql | 172.21.6.11 | 172.20.6.11 | mysql8.3 | |

### StarRocks (172.21.6.20~172.21.6.25) [完成]
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&check;] | starrocks | 172.21.6.20 | 172.20.6.20 | 3.3-latest | |

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

### Doris (172.21.3.80)
| service | backend ip | version | 备注 |
|---|---|---|---|
| doris-fe | 172.21.3.80 | latest | |
| doris-be | 172.21.3.81 | latest | |

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

## Queue (消息队列)
172.21.7.3 start

### Kafka Raft (172.21.7.3~172.21.7.4)
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&check;] | kafka-kraft | 172.21.7.3 | 172.20.7.3 | 3.9 | |
| [&check;] | kafka-ui | 172.21.7.4 | 172.20.7.4 | latest | | |

### Kafka Zookeeper 模式 (172.21.7.5~172.21.7.8)
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&check;] | kafka | 172.21.7.5 | 172.20.7.5 | 3.9 | |
| [&check;] | zookeeper | 172.21.7.6 | 172.20.7.6 | 3.9 | |
| [&check;] | kafka-ui | 172.21.7.7 | 172.20.7.7 | latest | | |
| [&check;] | zoonavigator | 172.21.7.8 | 172.20.7.8 | latest | | |

### Rabbitmq (172.21.7.11~172.21.7.11)
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&check;] | rabbitmq | 172.21.7.11 | 172.20.7.11 | latest | | |

### Rocketmq (172.21.7.20~172.21.7.30)
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&cross;] | rocketmq-dashboard | 172.21.7.20 | 172.20.7.20 | latest | | |
| [&cross;] | rocketmq-namesrv | 172.21.7.21 | 172.20.7.21 | latest | | |
| [&cross;] | rocketmq-broker | 172.21.7.22 | 172.20.7.22 | latest | | |

### Pulsar (172.21.7.31~172.21.7.35)
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&check;] | pulsar | 172.21.7.31 | 172.20.7.31 | latest | | |
| [&check;] | pulsar-manager | 172.21.7.32 | 172.20.7.32 | latest | | |

### Nats (172.21.7.40~172.21.7.41)
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&check;] | nats | 172.21.7.40 | 172.20.7.40 | latest | | |

### Beanstalkd (172.21.7.50~172.21.7.51)
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&check;] | beanstalkd | 172.21.7.50 | 172.20.7.50 | latest | | |
| [&check;] | beanstalkd-console | 172.21.7.51 | 172.20.7.51 | latest | | |

## Registry (注册中心)
172.21.8.3 start

### Consul (172.21.8.3~172.21.8.5)
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&cross;] | consul | 172.21.8.3 | 172.20.8.3 | latest | | |

### Zookeeper (172.21.8.6~172.21.8.7)
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&cross;] | zookeeper | 172.21.8.3 | 172.20.8.3 | latest | | |

### Nacos (172.21.8.10~172.21.8.20)
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&cross;] | nacos | 172.21.8.10 | 172.20.8.10 | latest | | |

### Etcd (172.21.8.20~172.21.8.21)
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&cross;] | etcd | 172.21.8.20 | 172.20.8.20 | latest | | |

## Cluster (集群服务)
172.21.10.3 start

### Ndb Cluster (172.21.10.3~172.21.10.11)
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| phpmyadmin | 172.21.10.3 | 172.20.10.3 | latest | |
| ndb-data1 | 172.21.10.4 | 172.20.10.4 | latest | |
| ndb-data2 | 172.21.10.5 | 172.20.10.5 | latest | |
| ndb-data3 | 172.21.10.6 | 172.20.10.6 | latest | |
| ndb-data4 | 172.21.10.7 | 172.20.10.7 | latest | |
| ndb-sql1 | 172.21.10.8 | 172.20.10.8 | latest | |
| ndb-sql2 | 172.21.10.9 | 172.20.10.9 | latest | |
| ndb-management | 172.21.10.10 | 172.20.10.10 | latest | |


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

# 镜像加速清单
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
