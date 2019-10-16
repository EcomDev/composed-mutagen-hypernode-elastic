#!/usr/bin/env bash

mkdir -p /var/run/blackfire/

echo "Killing any old Blackfire service"
pkill -f /usr/bin/blackfire-agent || /bin/true

touch /data/web/nginx/magento2.flag

echo "Starting Blackfire Agent"
/usr/bin/screen -S hypernode_service_blackfire -d -m blackfire-agent --server-id=$BLACKFIRE_SERVER_ID --server-token=$BLACKFIRE_SERVER_TOKEN
