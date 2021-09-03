sudo cp config/ens.conf /etc/supervisor/conf.d/
sudo service supervisor start

echo "openapps"


chmod 0760 /etc/supervisor/supervisord.conf
chmod +x './apps/*.sh'

sudo -i -H  -u frappe <<< $(pwd)/apps/frappe.sh
sudo -i -H  -u frappe <<< $(pwd)/apps/vs.sh


