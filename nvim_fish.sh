#!/usr/bin/env fish

#Oh my fish - Themes for fish shell
echo -e "\nInstalling Oh My Fish"
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

#fisher (plugin to fish)
echo -e "\nInstalling fisher"
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# Install nvm with fisher
echo -e "\nInstalling nvm"
fisher install jorgebucaran/nvm.fish

# Install nodejs
echo -e "\nInstalling Nodejs"
nvm install v16.15.0

# Settings to fish shell
cd ~/.config/fish
echo 'set -g theme_color_scheme nord' > config.fish && echo 'set -Ua fish_user_path $Home/.local/share/nvm/v16.15.0/bin/node' >> config.fish

# Vim plug
echo -e "\nInstalling VimPlug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Ripgrep (rg)
echo -e "\nInstalling ripgrep (rg)"
sudo apt install ripgrep -y

# Neovim
echo -e "\nInstalling Neovim"
cd ~
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb
rm -rf nvim-linux64.deb


echo -e "\nNeovim Setup"
sudo apt install python3-pip
cd ~/.config/
git clone https://github.com/Yesid-Rodelo/nvim.git
pip install pynvim

# tmux and settings
echo -e "\nInstalling tmux and configs"
sudo apt install tmux -y
cd ~
touch .tmux.conf  
echo 'set-option -g default-shell /bin/fish' > .tmux.conf && echo 'set-option -g escape-time 10' >> .tmux.conf
