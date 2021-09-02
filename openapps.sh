
sudo cp config/ens.conf /etc/supervisor/conf.d/


sudo service supervisor start
echo \n  "openapps" \n

screen  -d -m -S vs bash -c 'code-server'


chmod +x './apps/frappe.sh'
sudo -H -u frappe  -c './apps/frappe.sh'



sudo ln -s `pwd`/config/supervisor.conf /etc/supervisor/conf.d/frappe-bench.conf
supervisorctl reread
supervisorctl update
supervisorctl restart-all
