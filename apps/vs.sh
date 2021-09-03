

#/// nano ~/.config/code-server/config.yaml
sudo mkdir -f ~/.config/code-server
sudo touch ~/.config/code-server/config.yaml
sudo cat >  ~/.config/code-server/config.yaml  << EOF 
bind-addr: 0.0.0.0:8005
auth: password
password: awsec2
cert: false
user-data-dir : /home/frappe/
EOF

screen  -d -m -S vs bash -c 'code-server'
