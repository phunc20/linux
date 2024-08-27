## Arch Linux
- `crontab -e` to edit
- `journalctl -u cronie` to inspect crontab log had you choose `cronie`
- `sudo systemctl start cronie`
- Example crontab
  ```
  */20 * * * * /bin/echo "Hello Welt at $(date)" >> /home/phunc20/cron.log
  */20 * * * * sudo /usr/bin/pacman -Syu --noconfirm >> /home/phunc20/cron.log
  ```
  Note that
    - `sudo` is needed if a command requires super user authenticity
- You have new mail in /var/spool/mail/phunc20
    - `less /var/spool/mail/phunc20`
