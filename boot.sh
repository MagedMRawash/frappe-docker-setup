echo "the bash test number one"
cd .. 
git clone https://github.com/MagedMRawash/frappe-docker-setup.git 
cd frappe-docker-setup
cp config/ens.conf /etc/supervisor/conf.d/
sudo service supervisor start






