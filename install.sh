#! bin/sh
apt update
pkgs='certbot python3-certbot-nginx -y'
install=false
for pkg in $pkgs; do
  status="$(dpkg-query -W --showformat='${db:Status-Status}' "$pkg" 2>&1)"
  if [ ! $? = 0 ] || [ ! "$status" = installed ]; then
    install=true
    break
  fi
done
if "$install"; then
  apt install $pkgs
fi