# Download und Start der Datei im Terminal mit:
# bash -c "$(curl -k -s https://raw.githubusercontent.com/richtertoralf/testonlinesetup/main/update.sh?$(date +%s))"
# der Querystring ?$(date +%s) sorgt dafür, das immer die aktuellste Datei heruntergeladen wird, da Server/Proxys 
# immer eine neue URL bekommen.

apt update -y && apt upgrade -y
echo "Update fertig :-)"
