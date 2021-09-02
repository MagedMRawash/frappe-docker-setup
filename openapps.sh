sudo cp config/ens.conf /etc/supervisor/conf.d/
sudo service supervisor start

echo "openapps"

screen  -d -m -S vs bash -c 'code-server --bind-addr 0.0.0.0:8005 --allow-http --password "awsec2" '

chmod 0760 /etc/supervisor/supervisord.conf
chmod +x './apps/frappe.sh'
sudo -i -H  -u frappe <<< $(pwd)/apps/frappe.sh
