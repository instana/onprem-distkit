# Install Kafka

This configuration assumes the following hardware footprint:

- 16 cores
- 32 GB memory
- 6000 IOP SSD volume

## Prerequisites

- Setup 3 node ZooKeeper cluster, see [Setup ZooKeeper cluster](../zookeeper/README.md)
- Install JRE 11, see [Install JRE 11](../instana-jre-11/README.md)

## Overview

Apache Kafka aims to provide a unified, high-throughput, low-latency platform for handling real-time data feeds. Its storage layer is essentially a "massively scalable pub/sub message queue designed as a distributed transaction log, making it highly valuable for enterprise infrastructures to process streaming data.

### Setup Kafka cluster

### Installation

Run following command as root.

Debian/Ubuntu:
```
apt-get install kafka=2.7.1-1
```

RedHat/CentOS:
```
yum install -y kafka-2.7.1-1
```

### Configuration

- [config](config) - contains example configuration files

### Start / Stop Kafka service

```
# reload configuration
systemctl daemon-reload

# start kafka
systemctl start kafka.service

# stop kafka
systemctl stop kafka.service

# check status of kafka
systemctl status kafka.service
```

### Check Logs

#### SystemD logs

```
journalctl -fu kafka
```
