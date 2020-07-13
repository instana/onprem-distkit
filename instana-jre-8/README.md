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

openjdk version "1.8.0_232"
OpenJDK Runtime Environment (Zulu 8.42.0.23-CA-linux64) (build 1.8.0_232-b18)
OpenJDK 64-Bit Server VM (Zulu 8.42.0.23-CA-linux64) (build 25.232-b18, mixed mode)
```

When using this JRE for datastores please use `/opt/instana/jre/` as `JAVA_HOME`
