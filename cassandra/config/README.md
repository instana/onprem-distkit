# Directories

#


# Configuration files

## cassandra.yaml

Filepath: `/etc/cassandra/cassandra.yaml`

Variables:
- ${ CLUSTER_NAME }, i.e. `example-cluster-name`
- ${ DATA_DIRECTORY }, i.e. `/mnt/data/cassandra/`
- ${ SEED_IP_ADDRESSES }, i.e. IP of Cassandra seed node `10.10.20.101`
- ${ NODE_IP_ADDRESS }, i.e. IP of this Cassandra node `10.10.20.101`


## systemd overrrides

Filepath: `/etc/systemd/system/cassandra.service.d/override.conf`

Variables:
- none


## SysVinit defaults

The purpose of files in `/etc/default` & is to provide extra options for starting a service, or override certain aspects of the service's startup.

Filepath: `/etc/default/cassandra`

Variables:
- none