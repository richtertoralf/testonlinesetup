#!/bin/bash

# Download und Start der Datei im Terminal mit:
# bash -c "$(curl -k -s https://raw.githubusercontent.com/richtertoralf/testonlinesetup/main/vBoxClone.sh?$(date +%s))"
# der Querystring ?$(date +%s) sorgt dafür, das immer die aktuellste Datei heruntergeladen wird, da Server/Proxys 
# immer eine neue URL bekommen.

# change Hostname
echo -n "Enter New Hostname!: "
# Assign input value into a variable
read Hostname
# Assign the value of the variable
hostnamectl set-hostname $Hostname

# Change Machine-ID
rm -f /etc/machine-id
rm -f /var/lib/dbus/machine-id
systemd-machine-id-setup

# Recreate SSH-Keys
rm -f /etc/ssh/ssh_host_*
dpkg-reconfigure openssh-server

# update
apt update -y && apt upgrade -y
apt autoremove -y
