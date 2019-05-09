# Configuration files

## java.env

Filepath: `/etc/zookeeper/java.env`

Depending on the workload you need to provide the ZooKeeper JVM enough memory

```
export JVMFLAGS="-Xmx2048m -XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled"
```

## zoo.cfg

Filepath: `/etc/zookeeper/zoo.cfg`

Variables:
- ${ DATA_DIRECTORY }, i.e. `/mnt/data/zookeeper/`
- ${ INDEX_ZK_NODE_ONE }, i.e. `1`
- ${ ZK_HOSTNAME_ONE }, i.e. `10.10.40.101`
- ${ INDEX_ZK_NODE_TWO }, i.e. `2`
- ${ ZK_HOSTNAME_TWO }, i.e. `10.10.40.102`
- ${ INDEX_ZK_NODE_THREE }, i.e. `3`
- ${ ZK_HOSTNAME_THREE }, i.e. `10.10.40.103`
