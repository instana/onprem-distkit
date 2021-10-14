# Install Elasticsearch

This configuration assumes the following hardware footprint:

- 8 cores
- 32 GB memory
- 6000 IOP SSD volume

## Prerequisites

- Install JRE 8, see [Install JRE 8](../instana-jre-8/README.md)

## Overview

Elasticsearch is a search engine based on the Lucene library. It provides a distributed, multitenant-capable full-text search engine with an HTTP web interface and schema-free JSON documents.

### Setup Elasticsearch cluster

We can set up Elasticsearch as a single box or as a cluster. As an example we deliver two sample configurations for both setups.

### Installation

Run following command as root.

Debian:
```
apt install elasticsearch=7.10.2
```

RedHat/CentOS:
```
yum install -y elasticsearch-7.10.2-1
```

### Configuration

- [config](config) - contains basic example configuration files.
- [single system](config/single) - contains configuration file for single node setup.
- [distributed system](config/distributed) - contains configuration files for dedicated master and data nodes.

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
