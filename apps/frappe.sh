cd /home/frappe/frappe-bench

echo $(whoami) "$USER"

echo 'starting config dns_multitenant off' $(pwd)
bench config dns_multitenant off
echo 'Ending config dns_multitenant off'                       

echo 'starting setup supervisor'
#chmod 0760 /etc/supervisor/supervisord.conf
#chown frappe:frappe /etc/supervisor/supervisord.conf
bench setup supervisor  --yes
echo 'Ending config supervisor '
sudo ln -sf `pwd`/config/supervisor.conf /etc/supervisor/conf.d/frappe-bench.conf

supervisorctl reread
supervisorctl update

sudo service supervisor stop
sudo service supervisor start

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


screen  -d -m -S bench bash -c 'bench start'
