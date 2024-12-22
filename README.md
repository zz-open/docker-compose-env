# docker-compose-env
Full Stack development environment based on Docker Compose.

# 服务清单
## SINGLE (单机服务)
172.21.4.3 start

| status | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&cross;] | portainer | 172.21.4.3 | 172.20.4.3 | latest | |
| [&cross;] | busybox | 172.21.4.4 | 172.20.4.4 | latest | |
| [&cross;] | mysql57 | 172.21.4.5 | 172.20.4.5 | 5.7 | |
| [&check;] | mysql8 | 172.21.4.6 | 172.20.4.6 | 8.0~8.3 | 默认是 8.3 |
| [&check;] | redis-stack | 172.21.4.7 | 172.20.4.7 | 7.4.0-v1 | |
| [&cross;] | redis | 172.21.4.8 | 172.20.4.8 | 7.4 | |
| [&cross;] | memcached | 172.21.4.9 | 172.20.4.9 | 1.6.33 | |
| [&cross;] | mongo | 172.21.4.10 | 172.20.4.10 | 7.0.5 | |
| [&cross;] | mongo-webui | 172.21.4.11 | 172.20.4.11 | latest | |

## PROXY (静态代理服务) 
172.21.5.3 start

| 状态 | service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|---|
| [&cross;] | nginx | 172.21.5.3 | 172.20.5.3 | 1.27-alpine | |
| [&cross;] | apache | 172.21.5.4 | 172.20.5.4 | latest | |
| [&cross;] | caddy | 172.21.5.5 | 172.20.5.5 | latest | |
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
| xxjob | 172.21.6.10 | 172.20.6.10 | xxjob, 支持arm64 | |
| xxjob-mysql | 172.21.6.11 | 172.20.6.11 | mysql8.3 | |

## CLUSTER (集群服务)
172.21.4.3 start

| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
