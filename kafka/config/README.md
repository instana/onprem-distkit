# Configuration files

## server.properties
 
Filepath: `/etc/kafka/server.properties`

Variables:

- ${ BROKER_ID }, i.e. `1`
- ${ DATA_DIRECTORY }, i.e. `/mnt/data/kafka`
- ${ ZOOKEEPER_URI }, i.e. `10.20.30.40:2181,11.21.31.41:2181,12.22.32.42:2181/kafka`
- ${ REPLICATION_FACTOR }, i.e. `2`


## SysVinit

Filepath: `/etc/default/kafka`

The purpose of files in `/etc/default` is to provide extra options for starting a service, or override certain aspects of the service's startup.

Variables:
- none

## systemd

Filepath: `/etc/systemd/system/kafka.service.d/override.conf`

Variables:
- none