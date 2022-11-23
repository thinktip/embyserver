#!/bin/sh
cd /var/packages/EmbyServer/target/mono/bin
curl https://raw.githubusercontent.com/thinktip/embyserver/main/mb3admin.com.cert.pem >> /etc/ssl/certs/ca-certificates.crt
./cert-sync /etc/ssl/certs/ca-certificates.crt
cd /usr/local/etc/nginx/conf.d/*-*-*-*
wget https://raw.githubusercontent.com/chaoji2020/test/main/user.conf
nginx -s reload
