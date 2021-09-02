
#////// Init Docker Config
curl -fsSL https://code-server.dev/install.sh | sh

sudo apt-get install  dialog apt-utils -y  
sudo apt-get install screen -y  




sudo apt-get update  -y && sudo apt-get upgrade -y
hash -r


sudo apt-get install python-setuptools -y
sudo easy_install supervisor
sudo apt install supervisor -y


screen  -d -m -S vs bash -c 'code-server'
