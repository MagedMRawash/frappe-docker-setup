sudo cp config/ens.conf /etc/supervisor/conf.d/


sudo service supervisor start
echo \n  "openapps" \n 
screen  -d -m -S vs bash -c 'code-server'

#sudo -i -u frappe bash << EOF

cd /home/frappe/frappe-bench 
sudo -u frappe  bench config dns_multitenant off 
sudo -u frappe  bench setup supervisor 
sudo -u frappe  screen  -d -m -S bench bash -c 'bench start'
echo $(whoami)
sudo ln -s `pwd`/config/supervisor.conf /etc/supervisor/conf.d/frappe-bench.conf
supervisorctl reread 
supervisorctl update 
supervisorctl restart-all 
