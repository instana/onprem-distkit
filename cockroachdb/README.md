# Install CockroachDB

This configuration assumes the following hardware footprint:

- 16 cores
- 64 GB memory
- 6000 IOP SSD volume

> NOTE:
> This is not an exhaustively optimized configuration. It will likely change over time. Please seek to understand how
> configuration updates made to this repository may impact an already running cluster as they are not guaranteed to be
> backwards compatible.

## Prerequisites

- Install JRE 8, see [Install JRE 8](../instana-jre-8/README.md)

## Overview

CockroachDB is a cloud-native distributed SQL database designed to build, scale, and manage modern, data-intensive applications.

### Setup CockroachDB cluster

### Installation

Run follwing command as root.

Debian/Ubuntu:
```
dpkg -i cockroachdb_21.1.6-0_amd64.deb
```

RedHat/CentOS:
```
rpm -U cockroachdb-21.1.6-0.x86_64.rpm
```

### Upgrade
Please refer to [Update CockroachDB](https://www.cockroachlabs.com/docs/stable/upgrade-cockroach-version.html) to upgrade your CockroachDB to 21.1.6.

### Configuration

Configure CockroachDB to use systemD

```
[Unit]
Description=CockroachDB

[Service]
Type=simple
User=cockroachdb
Group=cockroachdb
Restart=always
RestartSec=30
ExecStart=/usr/bin/cockroachdb
EnvironmentFile=-/etc/cockroachdb/systemd.env
ExecStop=/usr/local/bin/cockroach quit
LimitCORE=infinity
LimitNOFILE=500000

[Install]
WantedBy=multi-user.target

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

### Check Logs

#### SystemD logs

```
journalctl -fu cockroachdb
```
