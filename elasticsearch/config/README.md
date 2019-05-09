# Configuration files

## elasticsearch

Filepath: `[/etc/default/elasticsearch](elasticsearch)

Variables:
- none

## elasticsearch.conf

Filepath: `[/etc/systemd/system/elasticsearch.service.d/elasticsearch.conf](elasticsearch.conf)

Variables:
- none


## elasticsearch.yml
 
Filepath: `[/etc/elasticsearch/elasticsearch.yml](single/elasticsearch.yaml)

Variables:

- ${ CLUSTER_NAME }, i.e. `example-cluster-name`
- ${ PATH_DATA } , i.e. `/mnt/data/elasticsearch/data`
- ${ PATH_LOGS }, i.e. `/mnt/logs/elasticsearch`
- ${ PATH_PLUGINS }, i.e. `/mnt/data/elasticsearch/plugins`
- ${ PATH_WORK }, i.e. `/mnt/data/elasticsearch/work`
- ${ IP_MASTER_X }, i.e `10.20.30.40`