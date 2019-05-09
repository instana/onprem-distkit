Elasticsearch 2.3.x Configuration 
=================================

This configuration assumes the following hardware footprint:

- 8 cores
- 32 GB memory
- 6000 IOP SSD volume

## Prerequisites

- There are no requirements for the installation of Elasticsearch.

## Overview

Elasticsearch is a search engine based on the Lucene library. It provides a distributed, multitenant-capable full-text search engine with an HTTP web interface and schema-free JSON documents.

### Setup Elasticsearch cluster

### Installation

Run follwing command as root. 

Debian:
```
apt-get install elasticsearch
```

RedHat/CentOS:
```
yum install -y elasticsearch
```

### Configuration

- [config](config) contains example configuration files

### Start / Stop Elasticsearch service

```
# start elasticsearch
systemctl start elasticsearch.service

# stop elasticsearch
systemctl stop elasticsearch.service

# check status of elasticsearch
systemctl status elasticsearch.service
```

### Check Logs

#### SystemD logs

```
journalctl -fu elasticsearch
```