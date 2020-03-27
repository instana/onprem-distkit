# Instana Data Store Dependency Reference Configurations

This repository contains reference configurations required by Instana's data store dependencies for the following technologies:

- [Cassandra](cassandra)
- [ClickHouse](clickhouse)
- [CockroachDB](cockroachb)
- [ElasticSearch](elasticsearch)
- [Kafka](kafka)
- [Zookeeper](zookeeper)

## Configure Instana Repository

We provide fully tested packages for all datastores required to run Instana. To be able to install these packages you need to setup the Instana Repository. Execute the following lines as root or with equivalent permissions.

### Debian

```
REPOSITORY="packages.instana.io/release/distonprem/deb"
OUTPUT="/etc/apt/sources.list.d/instana-distonprem.list"
echo "deb [arch=amd64] https://_:<customer_agent_key>@${REPOSITORY} generic main" > ${OUTPUT}
wget -qO - "https://packages.instana.io/Instana.gpg" | apt-key add -
apt-get update
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

#proxy=http://x.x.x.x:8080
#proxy_username=
#proxy_password=
EOF

yum makecache -y fast
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
