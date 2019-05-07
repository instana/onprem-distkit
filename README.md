Instana Data Store Dependency Reference Configurations
======================================================

This repository contains reference configurations required by Instana's data store dependencies for the following technologies:

- Cassandra
- ClickHouse
- ElasticSearch
- Kafka
- Zookeeper

The following sysctls should be set on all data store and worker systems:

```
net.core.somaxconn = 1024
net.ipv4.tcp_fin_timeout = 30
fs.file-max = 33554432
net.ipv4.tcp_max_syn_backlog = 512
net.ipv4.ip_local_port_range = 25000 64000
```
