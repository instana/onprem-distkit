## Install RPM / DEB package:

RPM:

```
rpm -U cockroachdb-X.rpm
```

DEB:

```
dpkg -i cockroachdb_X.deb
```
## Configure CockroachDB to use systemD
```
[Unit]
Description=CockroachDB

[Service]
Type=simple
User=cockroachdb
Group=cockroachdb
Restart=always
RestartSec=30
ExecStart=/usr/bin/cockroachdb
EnvironmentFile=-/etc/cockroachdb/systemd.env
ExecStop=/usr/local/bin/cockroach quit
LimitCORE=infinity
LimitNOFILE=500000
```
[Install]
WantedBy=multi-user.target

## Start CockroachDB and check status / logs:

```
systemctl start cockroachdb
systemctl status cockroachdb
journalctl -fu cockroachdb
```
