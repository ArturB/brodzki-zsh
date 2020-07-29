#!/usr/bin/bash

set -e

cd ~

if [[ -d brodzki-zsh ]] ; then
    rm -rf brodzki-zsh
fi
git clone https://github.com/ArturB/brodzki-zsh

if [[ -f .zshrc ]] ; then
    rm -f .zshrc
fi

if [[ -d .oh-my-zsh ]] ; then
    rm -rf .oh-my-zsh
fi
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp brodzki-zsh/brodzki.zsh-theme ~/.oh-my-zsh/themes/
sed -i 's/^ZSH_THEME=\".*/ZSH_THEME=\"brodzki\"/g' ~/.zshrc
sed -i 's/.*COMPLETION_WAITING_DOTS.*/COMPLETION_WAITING_DOTS=\"true\"/g' ~/.zshrc

rm -rf brodzki-zsh
