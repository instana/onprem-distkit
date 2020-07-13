# Install JRE 11

## Install RPM / DEB package:

RPM:

```
rpm install instana-jre-11
```

DEB:

```
apt install instana-jre-11
```

## Configure JAVA_HOME

Check version

```
/opt/instana/jre11/bin/java -version

openjdk version "11.0.7" 2020-04-14 LTS
OpenJDK Runtime Environment Zulu11.39+15-CA (build 11.0.7+10-LTS)
OpenJDK 64-Bit Server VM Zulu11.39+15-CA (build 11.0.7+10-LTS, mixed mode)
```

When using this JRE for datastores please use `/opt/instana/jre11/` as `JAVA_HOME`
