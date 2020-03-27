## Install RPM / DEB package:

```
	RPM: 		rpm -U cockroachdb-X.rpm
	DEB: 		dpkg -i cockroachdb_X.deb
```

## Start CockroachDB and check status / logs:

```
systemctl start cockroachdb
systemctl status cockroachdb
journalctl -fu cockroachdb
```
