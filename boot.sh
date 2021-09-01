echo "the bash test number "
cd ..
sudo rm -r  frappe-docker-setup
sudo git clone https://github.com/MagedMRawash/frappe-docker-setup.git
cd frappe-docker-setup
echo $(pwd)
sudo apt install supervisor
sudo cp config/ens.conf /etc/supervisor/conf.d/
sudo service supervisor start
