#!/bin/bash
set -ex
EXECUTION_DIR=$(pwd)

pushd temp-chat-server
npm install
popd

if [ -L /etc/nginx/sites-available/temp-chat-nginx-config.conf ]; then
	rm /etc/nginx/sites-available/temp-chat-nginx-config.conf
fi

if [ -L /etc/nginx/sites-enabled/temp-chat-nginx-config.conf ]; then
	rm /etc/nginx/sites-enabled/temp-chat-nginx-config.conf
fi

ln -s $EXECUTION_DIR/temp-chat-nginx-config.conf /etc/nginx/sites-available/temp-chat-nginx-config.conf

if [ -f /etc/nginx/sites-enabled ]; then
	rm /etc/nginx/sites-enabled/default
fi

ln -s /etc/nginx/sites-available/temp-chat-nginx-config.conf /etc/nginx/sites-enabled/.

if ! [ -z "$(ls -A /var/www/html/)" ]; then
	rm /var/www/html/*
fi

cp temp-chat-client/dist/temp-chat-client/* /var/www/html/.

systemctl restart nginx
