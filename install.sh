#!/bin/bash
set -e

pushd temp-chat-server
npm install
popd

ln -s /temp-chat-deploy/temp-chat-nginx-config.conf /etc/nginx/sites-available/temp-chat-nginx-config.conf

rm /etc/nginx/sites-enabled/default

ln -s /etc/nginx/sites-available/temp-chat-nginx-config.conf /etc/nginx/sites-available/.

rm /var/www/html/*

cp ~/temp-chat-deploy/temp-chat-client/dist/temp-chat-client/* /var/www/html/.
