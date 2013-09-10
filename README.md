collectd-network-bandwidth-usage
================================

Collectd exec plugin for monitoring the network bandwitdh usage. 

Installation
-----------

Uncomment exec plugin in your collectd.conf:
```bash
LoadPlugin exec
```

Configure plugin:
```bash
<Plugin exec>
	Exec username "/path/to/exec-network-bandwidth-usage.sh" "your-network-interface-name"
</Plugin>
```

Restart collectd:
```bash
service collectd restart
```
