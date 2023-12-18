#!/bin/bash

if [ "$(whoami)" == "root" ]; then
    echo '[!] Execute with normal user'
    exit 1
fi

sudo apt update
sudo apt install zsh zsh-syntax-highlighting zsh-autosuggestions bat lsd -y
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
sudo cp Hack.zip /usr/share/fonts
sudo unzip /usr/share/fonts/Hack.zip
sudo rm /usr/share/fonts/Hack.zip
sudo usermod --shell /usr/bin/zsh root
sudo usermod --shell /usr/bin/zsh $(whoami)
rm ~/.zshrc &>/dev/null
cp .zshrc ~/.zshrc
sudo ln -s -f /home/$(whoami)/.zshrc /root/.zshrc
sudo mkdir /usr/share/zsh-sudo
cp sudo.plugin.zsh /usr/share/zsh-sudo/
rm ~/.config/kitty/* &>/dev/null
mkdir ~/.config/kitty &>/dev/null
cp kitty.conf ~/.config/kitty/
cp color.ini ~/.config/kitty/
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
cp .p10k_root.zsh ~/.p10k.zsh
sudo cp .p10k.zsh /root/.p10k.zsh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
echo 'Realizar instalación manual de NVChad https://nvchad.com/docs/quickstart/install'