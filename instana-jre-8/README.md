# Install JRE 8

## Install RPM / DEB package:

RPM:

```
yum install instana-jre
```

DEB:

```
apt install instana-jre
```

## Configure JAVA_HOME

Check version

```
/opt/instana/jre/bin/java -version

openjdk version "1.8.0_302"
OpenJDK Runtime Environment (Zulu 8.56.0.21-CA-linux64) (build 1.8.0_302-b08)
OpenJDK 64-Bit Server VM (Zulu 8.56.0.21-CA-linux64) (build 25.302-b08, mixed mode)
```

When using this JRE for datastores please use `/opt/instana/jre/` as `JAVA_HOME`
