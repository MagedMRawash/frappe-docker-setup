sudo cp config/ens.conf /etc/supervisor/conf.d/

sudo apt-get install  dialog apt-utils -y  
sudo apt-get install screen -y  
sudo service supervisor start
echo \n  "openapps" \n 
screen  -d -m -S vs bash -c 'code-server'
sudo -i -u frappe bash << EOF
cd /home/frappe/frappe-bench 
bench config dns_multitenant off 
bench setup supervisor 
screen  -d -m -S bench bash -c 'bench start'
echo $(whoami)
EOF
cd /home/frappe/frappe-bench 
sudo ln -s `pwd`/config/supervisor.conf /etc/supervisor/conf.d/frappe-bench.conf
supervisorctl reread 
supervisorctl update 
supervisorctl restart-all 
