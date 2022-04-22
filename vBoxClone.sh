#!/bin/bash

# Download and start the file in the terminal with:
# bash -c "$(curl -k -s https://raw.githubusercontent.com/richtertoralf/testonlinesetup/main/vBoxClone.sh?$(date +%s))"
# The query string ?$(date +%s) ensures that always the most file is always downloaded,
# because servers/proxies always always get a new URL.

# change Hostname
echo -n "Enter New Hostname!: "
# Assign input value into a variable
read Hostname
# Assign the value of the variable
hostnamectl set-hostname $Hostname

# Change Machine-ID (works like this on Ubuntu machines, but not with standard Debian)
rm -f /etc/machine-id
rm -f /var/lib/dbus/machine-id
systemd-machine-id-setup

# Recreate SSH-Keys
rm -f /etc/ssh/ssh_host_*
dpkg-reconfigure openssh-server

# update
apt update -y && apt upgrade -y
apt autoremove -y

# correct /etc/hosts
echo "If necessary, correct /etc/hosts by adding the new hostname after 127.0.1.1."
