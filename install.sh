#!/bin/bash
set -e
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

if [ -L /lib/systemd/system/temp-chat-server.service ]; then
	rm /lib/systemd/system/temp-chat-server.service
fi

ln -s $EXECUTION_DIR/temp-chat-server.service /lib/systemd/system/temp-chat-server.service

systemctl daemon-reload
systemd enable temp-chat-server
systemd restart temp-chat-server
