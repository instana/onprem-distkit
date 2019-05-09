# Configuration files

## elasticsearch

The purpose of files in `/etc/default` is to provide extra options for starting a service, or override certain aspects of the service's startup.

Filepath: `/etc/default/elasticsearch`

Variables:
- none

## elasticsearch.conf

Filepath: `/etc/systemd/system/elasticsearch.service.d/elasticsearch.conf`

Variables:
- none

## elasticsearch.yml
 
Filepath: `/etc/elasticsearch/elasticsearch.yml` - Single node

Filepath: `/etc/elasticsearch/elasticsearch.yml` - Distributed master node

Filepath: `/etc/elasticsearch/elasticsearch.yml` - Distributed data node

Variables:

- ${ CLUSTER_NAME }, i.e. `example-cluster-name`
- ${ PATH_DATA } , i.e. `/mnt/data/elasticsearch/data`
- ${ PATH_LOGS }, i.e. `/mnt/logs/elasticsearch`
- ${ PATH_PLUGINS }, i.e. `/mnt/data/elasticsearch/plugins`
- ${ PATH_WORK }, i.e. `/mnt/data/elasticsearch/work`
- ${ IP_MASTER_X }, i.e `10.20.30.40`
