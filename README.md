# Instana Data Store Dependency Reference Configurations

This repository contains reference configurations required by Instana's data store dependencies for the following technologies:

- [Cassandra](cassandra)
- [ClickHouse](clickhouse)
- [CockroachDB](cockroachdb)
- [ElasticSearch](elasticsearch)
- [Kafka](kafka)
- [Zookeeper](zookeeper)

It also contains the JRE package used by

- [JRE 8](instana-jre-8)
- [JRE 11](instana-jre-11)

## Configure Instana Repository

We provide fully tested packages for all datastores required to run Instana. To be able to install these packages you need to setup the Instana Repository. Execute the following lines as root or with equivalent permissions.  
`customer_agent_key:` Got from your Instana Console.
### Debian/Ubuntu

configure package repository

```
REPOSITORY="packages.instana.io/release/distonprem/deb"
OUTPUT="/etc/apt/sources.list.d/instana-distonprem.list"
echo "deb [arch=amd64] https://_:<customer_agent_key>@${REPOSITORY} generic main" > ${OUTPUT}
wget -qO - "https://packages.instana.io/Instana.gpg" | apt-key add -
apt-get update
```

check provided packages

```
grep ^Package /var/lib/apt/lists/packages.instana.io_*_Packages

Package: cassandra-tools
Package: zookeeper
Package: elasticsearch
Package: kafka
Package: instanactl
Package: cockroachdb
Package: cassandra
Package: instana-jre
Package: instana-jre-11
Package: clickhouse
```

### RedHat/CentOS

```
cat >/etc/yum.repos.d/Instana-DistOnPrem.repo <<EOF
[instana-distonprem]
name=Instana-DistOnPrem
baseurl=https://_:<customer_agent_key>@packages.instana.io/release/distonprem/rpm/generic/x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.instana.io/Instana.gpg
priority=5
sslverify=1

# proxy=http://x.x.x.x:8080
# proxy_username=
# proxy_password=
EOF
```

check provided packages

```
yum makecache -y fast
yum repo-pkgs instana-distonprem list
```

## System-wide settings

The following `sysctls` should be set on all data store and worker systems:

```
net.core.somaxconn = 1024
net.ipv4.tcp_fin_timeout = 30
fs.file-max = 33554432
net.ipv4.tcp_max_syn_backlog = 512
net.ipv4.ip_local_port_range = 25000 64000
```
