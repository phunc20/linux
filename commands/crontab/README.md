## Arch Linux
- `crontab -e` to edit
- `journalctl -u cronie` to inspect crontab log had you choose `cronie`
- Example crontab
  ```
  * * * * * /bin/echo "Hello Welt at $(date)" >> /home/phunc20/cron.log
  ```
