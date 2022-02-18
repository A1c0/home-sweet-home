sudo apt update && sudo apt install -y zsh vim git curl && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd ~
git clone https://github.com/Waxo/config-shell.git
ln -s config-shell/.vimrc ./
cd ~/.oh-my-zsh/themes
ln -s ~/config-shell/waxo.zsh-theme ./
cd ~
sed -i 's/robbyrussell/waxo/g' ~/.zshrc
source ~/.zshrc
