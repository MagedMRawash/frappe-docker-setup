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

screen  -d -m -S bench bash -c 'bench start'

screen -wipe
