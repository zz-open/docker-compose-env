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
| [&check;] | redis-stack | 172.21.4.7 | 172.20.4.7 | 7.4.0-v1 | |
| [&check;] | redis | 172.21.4.8 | 172.20.4.8 | 7.4 | |
| [&check;] | memcached | 172.21.4.9 | 172.20.4.9 | 1.6.33 | |
| [&check;] | mongo | 172.21.4.10 | 172.20.4.10 | 7.0.5 | |
| [&cross;] | mongo-webui | 172.21.4.11 | 172.20.4.11 | latest | |
| [&cross;] | postgres | 172.21.4.12 | 172.20.4.12 | 16.2 | |
| [&cross;] | pgadmin | 172.21.4.13 | 172.20.4.13 | latest | |
| [&cross;] | phpmyadmin | 172.21.4.14 | 172.20.4.14 | 5.2.1 | |
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
| ndb-cluster-pma | 172.21.10.3 | 172.20.10.3 | latest | |
| ndb-cluster-data1 | 172.21.10.4 | 172.20.10.4 | latest | |
| ndb-cluster-data2 | 172.21.10.5 | 172.20.10.5 | latest | |
| ndb-cluster-data3 | 172.21.10.6 | 172.20.10.6 | latest | |
| ndb-cluster-data4 | 172.21.10.7 | 172.20.10.7 | latest | |
| ndb-cluster-sql1 | 172.21.10.8 | 172.20.10.8 | latest | |
| ndb-cluster-sql2 | 172.21.10.9 | 172.20.10.9 | latest | |
| ndb-cluster-management | 172.21.10.10 | 172.20.10.10 | latest | |
