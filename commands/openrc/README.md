## Simple Analogy
|openrc|systemd
|--------|------
| `rc-status`, `rc-service -l` | `systemctl status`
| `rc-update add <service> default` | `systemctl enable <service>`
| `rc-service start <service> default` | `systemctl start <service>`
