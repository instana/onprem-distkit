# Configuration files

## client.xml

Filepath: `/etc/clickhouse/client.xml`

Variables: none

## dynamic.xml

Filepath: `/etc/clickhouse/dynamic.xml`

Variables:
- ${ CLUSTER_NAME }, i.e. `example-cluster-name`
- ${ HOSTNAME }, i.e. `clickhouse-1`
- ${ SHARD_NUMBER }, i.e. `0`
- ${ REPLICA_ONE_FQDN }, i.e. `clickhouse-1.example.com`
- ${ REPLICA_TWO_FQDN }, i.e. `clickhouse-2.example.com`
- ${ ZOOKEEPER_ONE_IP }, i.e. `IP of zookeeper-1`
- ${ ZOOKEEPER_ONE_PORT }, i.e. `2181`
- ${ ZOOKEEPER_TWO_IP }, i.e. `IP of zookeeper-2`
- ${ ZOOKEEPER_TWO_PORT }, i.e. `2181`
- ${ ZOOKEEPER_THREE_IP }, i.e. `IP of zookeeper-3`
- ${ ZOOKEEPER_THREE_PORT }, i.e. `2181`

## server.xml

Filepath: `/etc/clickhouse/server.xml`

Variables:
- ${ LOG_DIRECTORY }, i.e. `/mnt/logs/clickhouse`
- ${ DATA_DIRECTORY }, i.e. `/mnt/data/clickhouse`

## users.xml

Filepath: `/etc/clickhouse/users.xml`

Variables: none
