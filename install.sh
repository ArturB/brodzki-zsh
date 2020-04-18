#!/bin/bash

git clone https://github.com/ArturB/brodzki-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp brodzki-zsh/brodzki.zsh-theme ~/.oh-my-zsh/themes/
sed -i 's/^ZSH_THEME=\".*/ZSH_THEME=\"brodzki\"/g' ~/.zshrc
sed -i 's/.*COMPLETION_WAITING_DOTS.*/COMPLETION_WAITING_DOTS=\"true\"/g' ~/.zshrc
rm -r brodzki-zsh
source ~/.zshrc

