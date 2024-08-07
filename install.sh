# 4 step start
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle --file ~/.dotfiles/Brewfile

# 4 step end

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.p10k.zsh ~/.p10k.zsh
ln -s ~/.dotfiles/sys_settings/wallpapers ~/Pictures/wallpapers
# add more links here

# set upd fnm
echo 'eval "$(fnm env --use-on-cd)"' >> ~/.zshrc