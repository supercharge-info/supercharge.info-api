#!/usr/bin/env bash

# exit script on any error
trap 'exit' ERR


if [[ ${EUID} -ne 0 ]]; then
   echo "must run as root";
   exit;
fi

# =====================================
# Set hostname
# =====================================
echo "forum01.supercharge.info" > /etc/hostname

# =====================================
# tomcat user
# =====================================
USER_UNPRIVILEGED="keith"
echo "creating non-privileged user ${USER_UNPRIVILEGED}";
useradd --create-home --shell /bin/bash "${USER_UNPRIVILEGED}"
passwd "${USER_UNPRIVILEGED}"

# =====================================
# sshd setup
# =====================================

SSHD_CONFIG_FILE="/etc/ssh/sshd_config";
echo "" >> "${SSHD_CONFIG_FILE}"
echo "#KDW Modifications:" >> "${SSHD_CONFIG_FILE}"
echo "PermitRootLogin no" >> "${SSHD_CONFIG_FILE}"
echo "AllowUsers ${USER_UNPRIVILEGED}" >> "${SSHD_CONFIG_FILE}"

# =====================================
# UPDATE packages
# =====================================

apt-get update
apt-get -y upgrade

# =====================================
# INSTALL packages
# =====================================

apt-get install -y \
ufw \
unattended-upgrades \
htop \
libpam-cracklib \
fail2ban

# =====================================
# FIREWALL
# =====================================

./ufw-setup.sh

# =====================================
# UNATTENDED UPGRADES
# =====================================
# modifies /etc/apt/apt.conf.d/20auto-upgrades
dpkg-reconfigure --priority=low unattended-upgrades


# =====================================
# DOCKER and GIT
#
# Remember that you will have to log out and back in for this to take effect!
# =====================================

wget -qO- https://get.docker.com/ | sh

# allow unprivileged user to run docker commands.
usermod -a -G docker "${USER_UNPRIVILEGED}"

# =====================================
#
# discourse
#
# =====================================
mkdir /var/discourse
git clone https://github.com/discourse/discourse_docker.git /var/discourse
cd /var/discourse
./discourse-setup

# Had to manually do this.  https://meta.discourse.org/t/troubleshooting-email-on-a-new-discourse-install/16326/2
#./launcher enter app
#rails r "SiteSetting.notification_email = 'forum@supercharge.info'"
