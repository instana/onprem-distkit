# Configuration files

Filepath: `/etc/elasticsearch/elasticsearch.yml`

Variables:

- ${ CLUSTER_NAME }, i.e. `example-cluster-name`
- ${ PATH_DATA } , i.e. `/mnt/data/elasticsearch/data`
- ${ PATH_LOGS }, i.e. `/mnt/logs/elasticsearch`
- ${ PATH_PLUGINS }, i.e. `/mnt/data/elasticsearch/plugins`
- ${ PATH_WORK }, i.e. `/mnt/data/elasticsearch/work`
- ${ IP_MASTER_X }, i.e `10.20.30.40`

## SysVinit

Filepath: `/etc/default/elasticsearch`

The purpose of files in `/etc/default` is to provide extra options for starting a service, or override certain aspects of the service's startup.

Variables:
- none

## systemd

Filepath: `/etc/systemd/system/elasticsearch.service.d/override.conf`

Variables:
- none

