if [ -f "/etc/apt/sources.list.backup" ];then
    sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup
fi
sudo cp sources-13.04.list /etc/apt/sources.list
# sudo apt-get update
