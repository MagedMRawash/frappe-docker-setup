GNU nano 3.2                                    init.sh

#////// Init Docker Config
sudo apt-get update  -y && sudo apt-get upgrade -y
curl -fsSL https://code-server.dev/install.sh | sh


#/// nano ~/.config/code-server/config.yaml
cat << EOF >  ~/.config/code-server/config.yaml
bind-addr: 0.0.0.0:8005
auth: password
password: awsec2
cert: false
user-data-dir : .
EOF


sudo apt-get install python-setuptools -y
sudo easy_install supervisor
sudo apt install supervisor -y
