#!/bin/bash
while true; do
    begin=`date +%s`
    php /var/www/html/nfebox/admin/cli/cron.php
    end=`date +%s`
    if [ $(($end - $begin)) -lt 15 ]; then
        sleep $(($begin + 15 - $end))
    fi
done
