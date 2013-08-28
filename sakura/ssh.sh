sudo apt-get install openssh-server

mkdir ~/.ssh/
if [ -f "~/.ssh/id_rsa" ]; then
    ssh-keygen -t dsa -P '' -f ~/.ssh/id_dsa
fi
cat ~/.ssh/id_dsa.pub >> ~/.ssh/authorized_keys
