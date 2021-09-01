
#////// Init Docker Config
apt install code-server

#/// nano ~/.config/code-server/config.yaml
cat << EOF >  ~/.config/code-server/config.yaml
bind-addr: 0.0.0.0:8005
auth: password
password: awsec2
cert: false
user-data-dir : .
EOF
