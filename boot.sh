echo "the bash test number "
cd ..
sudo rm -rf  frappe-docker-setup
sudo git clone https://github.com/MagedMRawash/frappe-docker-setup.git
cd frappe-docker-setup
echo $(pwd)

bash ./openapps.sh
