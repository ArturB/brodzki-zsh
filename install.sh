#!/bin/bash

set -e

git clone https://github.com/ArturB/brodzki-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp brodzki-zsh/brodzki.zsh-theme ~/.oh-my-zsh/themes/
sed -i 's/^ZSH_THEME=\".*/ZSH_THEME=\"brodzki\"/g'
rm -r brodzki-zsh
