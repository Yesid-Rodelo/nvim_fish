# Fish shell
sudo apt install fish

#fisher (plugin to fish)
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# Install nvm with fissher
fisher install jorgebucaran/nvm.fish

# Install nodejs
nvm install v16.15.0

#Oh my fish - Themes for fish shell
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install bobthefish

# Settings to fish shell
cd ~/.config/fish
echo 'set -g theme_color_scheme nord' > config.fish && echo 'set -Ua fish_user_path $Home/.local/share/nvm/v16.15.0/bin/node' >> config.fish

# Vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Ripgrep (rg)
sudo apt install ripgrep

# Neovim
cd ~
curl https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb
rm -rf nvim-linux64.deb

# Neovim Setup
cd ~/.config
git clone https://github.com/Yesid-Rodelo/nvim.git

# tmux and settings
sudo apt install tmux
cd ~
touch .tmux.conf  
echo 'set-option -g default-shell /bin/fish' > .tmux.conf && echo 'set-option -g escape-time 10' >> .tmux.conf && echo 'set -g mouse on' >> .tmux.conf
