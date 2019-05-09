# Zookeeper  3.4.x Configuration

This configuration assumes the following hardware footprint:

- 2 cores
- 8 GB memory
- 6000 IOP SSD volume

## Prerequisites

- none

## Overview

### Installation

#### Debian:

```
apt-get install zookeeper
```

#### RedHat/CentOS:

```
yum install -y zookeeper
```

### Configuration

#### ZooKeeper for ClickHouse

- [config-clickhouse](config-clickhouse) ZooKeeper configuration files for ZK ClickHouse cluster
- [config-kafka](2-shard-clickhouse-setup) ZooKeeper configuration files for Kafka cluster

### Start / Stop ZooKeeper service

```
# start zookeeper
systemctl start zookeeper.service

# stop zookeeper
systemctl stop zookeeper.service

# check status of zookeeper
systemctl status zookeeper.service
```

### Check Logs

#### SystemD logs

```
journalctl -fu zookeeper
```
