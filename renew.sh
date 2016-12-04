#!/usr/bin/env bash

#==========================================
# Let's Encrypt renew certificates script
#
# @author Mehdi Youb<medzoner@medzoner.com>
# HowTo: ./renew.sh [domain1,domain2,...]
#==========================================

le_path='/opt/letsencrypt'
exp_limit=30;

domains=$1
if [ -z "$domains" ] ; then
        echo "[ERROR] Specified the domains name for the certificates renewal."
        exit 1;
fi

echo "Stopping Nginx..."
/usr/sbin/service nginx stop

"$le_path"/letsencrypt-auto certonly --nginx --renew-by-default --domains "${domains}"

echo "Restarting Nginx..."
/usr/sbin/service nginx start

echo "Renewal process finished for domain $domains"
exit 0;
