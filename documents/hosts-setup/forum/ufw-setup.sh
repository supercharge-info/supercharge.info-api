#!/usr/bin/env bash

# Only root can run this script
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

ufw --force reset

#----------------
# SSH
ufw allow 22/tcp
#----------------

#----------------
# HTTP
#----------------
ufw allow 443/tcp
ufw allow 80/tcp

ufw enable
ufw status numbered


