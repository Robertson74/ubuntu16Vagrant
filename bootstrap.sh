cd /home/vagrant
git init
git remote add github https://github.com/Robertson74/linuxEnviroment.git
sudo apt-get install tmux -y
sudo apt-get install python-dev -y
sudo apt-get install python3-dev -y
sudo apt-get install nodejs -y
sudo apt-get install npm -y
npm install -g nodemon
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
sudo apt-get install cowsay -y
sudo apt-get install cmake -y
sudo apt-get install bc -y
sudo apt-get install apache2 -y
sudo apt-get install php -y
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password devdb'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password devdb'
sudo apt-get install mysql-server -y
npm install -g typescript

# newest vim
# Create the directories you need
sudo mkdir -p /opt/local/bin
# Download, compile, and install the latest Vim
cd /home/vagrant
git clone https://github.com/vim/vim.git
cd vim
./configure --prefix=/opt/local --with-features=huge --enable-pythoninterp=yes --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu --enable-python3interp=yes --with-python3-config-dir=/usr/lib/python3.4/config-3.4m-x86_64-linux-gnu
make
sudo make install
