Cassandra 3.11.x Configuration 
==============================

This configuration assumes the following hardware footprint:

- 16 cores
- 64 GB memory
- 6000 IOP SSD volume

> NOTE:
> This is not an exhaustively optimized configuration. It will likely change over time. Please seek to understand how 
> configuration updates made to this repository may impact an already running cluster as they are not guaranteed to be 
> backwards compatible.

## Prerequisites

- There are no requirements for the installation of Cassandra. 

## Overview

Apache Cassandra is a free and open-source, distributed, wide column store, NoSQL database management system designed to handle large amounts of data across many commodity servers, providing high availability with no single point of failure. 

### Setup Cassandra cluster

### Installation

Run follwing command as root. 

Debian:
```
apt-get install cassandra
```

RedHat/CentOS:
```
yum install -y cassandra
```

### Configuration

- [config](config) contains example configuration files

### Start / Stop Cassandra service

```
# start cassandra
systemctl start cassandra.service

# stop cassandra
systemctl stop cassandra.service

# check status of cassandra
systemctl status cassandra.service
```

### Check Logs

#### SystemD logs

```
journalctl -fu cassandra
```
