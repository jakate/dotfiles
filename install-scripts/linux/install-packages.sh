

sudo apt-get -y install vim
sudo apt-get -y install git
sudo apt-get -y install tmux
sudo apt-get -y install curl
sudo apt-get -y install python-pygments

# ---
# Install git-completion and git-prompt
# ---
cd ~/
curl -OL https://github.com/git/git/raw/master/contrib/completion/git-completion.bash
mv ~/git-completion.bash ~/.git-completion.bash
curl https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
echo "git-completion and git-prompt Installed and Configured" >> $log_file


# ---
# Install node
# ---
cd ~/
git clone https://github.com/joyent/node
cd node
sudo ./configure --prefix=/usr/local
sudo make
sudo make install
cd ~/
sudo rm -r node # Remove the node folder in the home directory

# node it seems is installed as nodejs in Mint if that
# is the case we create a symlink to node
if [[ (! -f /usr/bin/node) && (-f /usr/bin/nodejs) ]]; then
    sudo ln -s /usr/bin/nodejs /usr/bin/node
fi


sudo apt-get -y install npm
sudo apt-get -y install python-pip

