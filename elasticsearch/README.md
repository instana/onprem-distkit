Elasticsearch 2.3.x Configuration 
=================================

This configuration assumes the following hardware footprint:

- 8 cores
- 32 GB memory
- 6000 IOP SSD volume

A large number of scaleout topologies are possible with elasticsearch, as such the only required values for /etc/elasticsearch/elasticsearch.yml are:

```
bootstrap.mlockall: true
```

Systemd must have the following configured via a dropin /etc/systemd/system/elasticsearch.service.d/elasticsearch.conf

```
LimitMEMLOCK=infinity
```
