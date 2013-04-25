# Install apps via apt
sudo apt-get install curl git tmux vim zsh

# Install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# Change default shell to ZSH
chsh -s /usr/bin/zsh

# Set solarized colors for terminal
cd ~
git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
chmod u+x set_dark.sh
./set_dark.sh 
cd ~
rm -rf gnome-terminal-colors-solarized

# Install tmux config
git clone https://github.com/tonyblundell/.tmux.git
ln -s .tmux/tmux.conf .tmux.conf

# Install vim config
cd ~
git clone --recursive https://github.com/tonyblundell/.vim.git
ln -s .vim/vimrc .vimrc

# Install Inconsolata font
mkdir ~/.fonts
cd ~/.fonts
wget http://www.levien.com/type/myfonts/Inconsolata.otf

# Friendly advice
echo "Inconsolata font installed, select it in terminal profile settings"
echo "Log out then log back in for default shell setting to take effect"
