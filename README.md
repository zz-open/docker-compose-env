# docker-compose-env
Full Stack development environment based on Docker Compose.

# 服务清单
## SINGLE (单机服务)
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

## PROXY (静态代理服务) 
172.21.5.3 start

| 状态 | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&check;] | nginx | 172.21.5.3 | 172.20.5.3 | 1.27 | |
| [&check;] | apache | 172.21.5.4 | 172.20.5.4 | 2.4 | |
| [&check;] | caddy | 172.21.5.5 | 172.20.5.5 | 2.9 | |
| [&cross;] | traefik | 172.21.5.6 | 172.20.5.6 | latest | |

## FULLSTACK (全栈式集成服务)
172.21.6.3 start

### METING API (172.21.6.3~172.21.6.4)
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&check;] | meting-api | 172.21.6.3 | 172.20.6.3 | latest | |
| [&check;] | caddy | 172.21.6.4 | 172.20.6.4 | latest | | |

### XXJOB (172.21.6.10~172.21.6.11) [完成]
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&check;] | xxjob | 172.21.6.10 | 172.20.6.10 | xxjob, 支持arm64 | |
| [&check;] | xxjob-mysql | 172.21.6.11 | 172.20.6.11 | mysql8.3 | |

### STARROCKS (172.21.6.20~172.21.6.25) [完成]
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&check;] | starrocks | 172.21.6.20 | 172.20.6.20 | 3.3-latest | |

## QUEUE (消息队列)
172.21.7.3 start

### KAFKA KRAFT模式 (172.21.7.3~172.21.7.4)
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&check;] | kafka-kraft | 172.21.7.3 | 172.20.7.3 | latest | |
| [&check;] | kafka-ui | 172.21.7.4 | 172.20.7.4 | latest | | |

### KAFKA ZOOKEEPER 模式 (172.21.7.5~172.21.7.7)
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&check;] | kafka | 172.21.7.5 | 172.20.7.5 | latest | |
| [&check;] | zookeeper | 172.21.7.6 | 172.20.7.6 | latest | |
| [&check;] | kafka-ui | 172.21.7.7 | 172.20.7.7 | latest | | |

### ROCKERMQ (172.21.7.8~172.21.7.10)
| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|


## CLUSTER (集群服务)
172.21.4.3 start

| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
