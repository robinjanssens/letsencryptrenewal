# Let’s Encrypt Automated Renewal

## Install

### Clone repo
- `cd /opt`<br>
- `sudo git clone https://github.com/robinjanssens/letsencryptrenewal.git`

### Schedule using cron
- `sudo crontab -e`<br>
- Add the following rule `0 2 * * Mon bash /opt/letsencryptrenewal/letsencryptrenewal.sh`<br>
  which means update every Monday at 2 am (server time)

| Minutes | Hour | Day of Month | Month | Day of Week | Command |
| ------- | ---- | ------------ | ----- | ----------- | ------- |
| 0       | 2    | *            | *     | Mon         | bash /opt/letsencryptrenewal/letsencryptrenewal.sh |

## Logs
Default logfile can be found at `/var/log/letsencryptrenewal.log`<br>
Log location can be changed in the script.
