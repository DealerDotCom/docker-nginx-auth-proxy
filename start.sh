#!/bin/bash

envsubst '$BACKEND_URL $AUTH_SERVER_URL $PROXY_URL_BASE' < /etc/nginx/conf.d/default.conf.tpl > /etc/nginx/conf.d/default.conf
cat /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'