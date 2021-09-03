

#/// nano ~/.config/code-server/config.yaml
sudo mkdir ~/.config/code-server
touch ~/.config/code-server/config.yaml
sudo cat << EOF >  ~/.config/code-server/config.yaml
bind-addr: 0.0.0.0:8005
auth: password
password: awsec2
cert: false
user-data-dir : /home/frappe/
EOF

screen  -d -m -S vs bash -c 'code-server'
