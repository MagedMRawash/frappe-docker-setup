#!/bin/bash

echo "ensoulify Time " $(date)

#/// nano ~/.config/code-server/config.yaml
sudo cat << EOF >  ~/.config/code-server/config.yaml
bind-addr: 0.0.0.0:8005
auth: password
password: awsec2
cert: false
user-data-dir : .
EOF


# cd ..
# sudo rm -rf  frappe-docker-setup
sudo git pull
# git clone https://github.com/MagedMRawash/frappe-docker-setup.git
# cd frappe-docker-setup
echo $(pwd)

chmod +x ./openapps.sh
./openapps.sh

exec "$@"

