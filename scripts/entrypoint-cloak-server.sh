#!/bin/sh

echo -e "=============================================================================="
echo -e "========================= CLOAK DOMAIN FRONTING =============================="
echo -e "=============================================================================="

sed -i "s|LOCAL_IP|${LOCAL_IP}|" /app/config.json
sed -i "s|LOCAL_PORT|${LOCAL_PORT}|" /app/config.json
sed -i "s|METHOD|${METHOD}|" /app/config.json
sed -i "s|BYPASSUID|${BYPASSUID}|" /app/config.json
sed -i "s|REDIRADDR|${REDIRADDR}|" /app/config.json
sed -i "s|PRIVATEKEY|${PRIVATEKEY}|" /app/config.json
sed -i "s|ADMINUID|${ADMINUID}|" /app/config.json

echo -e '[+] Config.json generated successfully.'
echo -e '[+] Show Container config'
echo -e "[!] Local IP : \t${LOCAL_IP}"
echo -e "[!] Local Port : \t${LOCAL_PORT}"
echo -e "[!] Method : \t${METHOD}"
echo -e "[!] BypassUID : \t${BYPASSUID}"
echo -e "[!] RedirAddr : \t${REDIRADDR}"
echo -e "[!] PrivateKey : \t${PRIVATEKEY}"
echo -e "[!] AdminUID : \t${ADMINUID}"
echo -e "[+] Happy Domain Fronting :)"

exec "$@"
