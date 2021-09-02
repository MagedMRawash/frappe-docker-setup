sudo cp config/ens.conf /etc/supervisor/conf.d/

su - frappe 
cd /home/frappe/frappe-bench 
screen  -d -m -S bench bash -c 'bench start'


bench config dns_multitenant off
bench setup supervisor
sudo ln -s `pwd`/config/supervisor.conf /etc/supervisor/conf.d/frappe-bench.conf

su - 
sudo service supervisor start

echo "openapps"
