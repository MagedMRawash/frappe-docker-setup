
echo "ensoulify Time " $(date)
# cd ..
# sudo rm -rf  frappe-docker-setup
sudo git pull
# git clone https://github.com/MagedMRawash/frappe-docker-setup.git
# cd frappe-docker-setup
echo $(pwd)

bash ./openapps.sh
