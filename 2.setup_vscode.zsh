#!/usr/bin/env zsh

echo "\nbot: create vscode setting symlink!"
ln -sf ~/Dotfiles/code_settings.json ~/Library/Application\ Support/Code/User/settings.json

echo "\nbot: start installing vscode extentions!\n"

code --install-extension albert.TabOut --force
code --install-extension ms-python.python --force
code --install-extension vscode-icons-team.vscode-icons --force
code --install-extension sdras.night-owl --force
code --install-extension GrapeCity.gc-excelviewer --force
code --install-extension mhutchie.git-graph --force
code --install-extension ex-codes.pine-script-syntax-highlighter --force

echo "\nbot: finished installing vscode extentions!\n"