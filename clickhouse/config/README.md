# Configuration files

## client.xml

Filepath: `/etc/clickhouse/client.xml`

Variables: none

## dynamic.xml

Filepath: `/etc/clickhouse/dynamic.xml`

Variables:
- ${ CLUSTER_NAME }
- ${ HOSTNAME }
- ${ SHARD_NUMBER }
- ${ REPLICA_ONE_FQDN }
- ${ REPLICA_TWO_FQDN }
- ${ ZOOKEEPER_ONE_IP }
- ${ ZOOKEEPER_ONE_PORT }
- ${ ZOOKEEPER_TWO_IP }
- ${ ZOOKEEPER_TWO_PORT }
- ${ ZOOKEEPER_THREE_IP }
- ${ ZOOKEEPER_THREE_PORT }

## server.xml

Filepath: `/etc/clickhouse/server.xml`

Variables:
- ${ LOG_DIRECTORY }, i.e. `/mnt/logs/clickhouse`
- ${ DATA_DIRECTORY }, i.e. `/mnt/data/clickhouse`

## users.xml

Filepath: `/etc/clickhouse/users.xml`

Variables: none
