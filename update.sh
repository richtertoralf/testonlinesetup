# Download und Start der Datei im Terminal mit:
# bash -c "$(curl -k -s https://raw.githubusercontent.com/richtertoralf/testonlinesetup/main/update.sh?$(date +%s))"
# der Querystring ?$(date +%s) sorgt dafür, das immer die aktuellste Datei heruntergeladen wird, da Server/Proxys 
# immer eine neue URL bekommen.

# Hier kommt jetzt die Installationsroutine
apt update -y && apt upgrade -y
apt autoremove -y

# hier kann auch was Komplexeres stehen ;-)
# z.B. conf-Files downloaden
# weitere Skripte downloaden und ausführbar machen
# Dienste starten (dann sollte dieses Skript aber auch mit root-Rechten ausgeführt werden)

echo "Update fertig :-)"
