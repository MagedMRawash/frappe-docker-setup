sudo cp config/ens.conf /etc/supervisor/conf.d/

su - frappe 
cd /home/frappe/frappe-bench 
bench start 


bench config dns_multitenant off
bench setup supervisor
sudo ln -s `pwd`/config/supervisor.conf /etc/supervisor/conf.d/frappe-bench.conf

sudo service supervisor start

echo "openapps"
