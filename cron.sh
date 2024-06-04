#!/bin/bash

sudo apt-get update
sudo apt-get install cron
sudo service cron start
sudo service cron status

SCRIPT_PATH="$(pwd)/fileManagement.sh"
chmod +x "$SCRIPT_PATH"
CRON_ENTRY="*/5 * * * * /bin/bash $SCRIPT_PATH $HOME"
(crontab -l; echo "$CRON_ENTRY" ) | crontab -