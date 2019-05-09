# Configuration files

## cassandra.yaml

Filepath: `/etc/cassandra/cassandra.yaml`

Variables:
- ${ CLUSTER_NAME }, i.e. `example-cluster-name`
- ${ DATA_DIRECTORY }, i.e. `/mnt/data/cassandra/`
- ${ SEED_IP_ADDRESSES }, i.e. IP of Cassandra seed node `10.10.20.101`
- ${ NODE_IP_ADDRESS }, i.e. IP of this Cassandra node `10.10.20.101`

## cassandra

Filepath: `/etc/default/cassandra`

Variables:
- none
