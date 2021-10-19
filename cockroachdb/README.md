# Install CockroachDB

This configuration assumes the following hardware footprint:

- 16 cores
- 64 GB memory
- 6000 IOP SSD volume

> NOTE:
> This is not an exhaustively optimized configuration. It will likely change over time. Please seek to understand how
> configuration updates made to this repository may impact an already running cluster as they are not guaranteed to be
> backwards compatible.

## Overview

CockroachDB is a cloud-native distributed SQL database designed to build, scale, and manage modern, data-intensive applications.

### Setup CockroachDB cluster

### Installation

Run following command as root.

Debian/Ubuntu:
```
apt-get install -y cockroachdb=21.1.6-1
```

RedHat/CentOS:
```
yum install -y cockroachdb-21.1.6-1
```

### Upgrade
Please refer to [Update CockroachDB](https://www.cockroachlabs.com/docs/stable/upgrade-cockroach-version.html) to upgrade your CockroachDB to 21.1.6.

For example: 
If you are upgrading from v20.1.17 to v21.1.6, you should:
1. First upgrade to a production release of v20.2, e.g. 20.2.16

   Debian/Ubuntu:
   ```
   apt-get install -y cockroachdb=20.2.16-1
   ```

   RedHat/CentOS:
   ```
   yum install -y cockroachdb-20.2.16-1
   ```

2. Perform a second rolling upgrade to v21.1.6
   Debian/Ubuntu:
   ```
   apt-get install -y cockroachdb=21.1.6-1
   ```

   RedHat/CentOS:
   ```
   yum install -y cockroachdb-21.1.6-1
   ```

### Configuration

Configure CockroachDB by editing /lib/systemd/system/cockroachdb.service

```
...

[Service]
...
ExecStart=/opt/cockroachdb/cockroach start \
  --insecure \
  --store=</path/to/data/store> \
  --log='file-defaults: {dir: </path/to/log-dir> }' \
  --listen-addr=<hostname>:26257 \
  --http-addr=<hostname>:8081 \
  --join=<host1>:26257,<host2>:26257 
...

```

### Start / Stop CockroachDB service

```
# reload configuration
systemctl daemon-reload

# start cockroachdb
systemctl start cockroachdb

# stop cockroachdb
systemctl stop cockroachdb

# check status of cockroachdb
systemctl status cockroachdb

```

**Note:** Start CockroachDB service for each host in `join` field that you want in your cluster.


### Initialize the CockroachDB cluster

After CockroachDB service on all hosts are started, run the cockroach init command to complete the CockroachDB startup process and have them join together as a cluster

```
/opt/cockroachdb/cockroach  init --insecure --host=<hostname>:26257

```

### Check Logs

#### SystemD logs

```
journalctl -fu cockroachdb
```
