# /bin/bash
logfile="/var/log/letsencryptrenewal.log"
if [ ! -f $logfile ]; then
    touch $logfile
fi
echo "Date: "$(date) >> $logfile
/opt/letsencrypt/certbot-auto renew --pre-hook "service apache2 stop" --post-hook "service apache2 start" >> $logfile
echo "                              " >> $logfile
echo "==============================" >> $logfile
echo "                              " >> $logfile
