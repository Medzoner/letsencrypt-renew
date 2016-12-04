# Let's Encrypt renew certificates script

## Install:
```
git clone https://github.com/Medzoner/letsencrypt-renew.git
```

## HowTo:
```
sudo ./renew.sh [domain1,domain2,...]
```

## Execute monthly task of the script: 
sudo crontab -e
30 3 * * 0 /path/renew.sh >> /var/log/letsencrypt/renewal.log
