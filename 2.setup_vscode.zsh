#!/usr/bin/env zsh

if [[ -f ~/Library/Application\ Support/Code/User/settings.json ]]; then
    cp ~/Library/Application\ Support/Code/User/settings.json ~/Library/Application\ Support/Code/User/settings.json.bkup-$(date +%F)
fi

if [[ -f ~/Library/Application\ Support/Code/User/keybindings.json ]]; then
    cp ~/Library/Application\ Support/Code/User/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json.bkup-$(date +%F)
fi

echo "\nbot: create vscode setting & keybindings symlink!"
ln -sf ~/Dotfiles/code_settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf ~/Dotfiles/code_keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

echo "\nbot: start installing vscode extentions!\n"

code --install-extension albert.TabOut --force
code --install-extension ms-python.python --force
code --install-extension vscode-icons-team.vscode-icons --force
code --install-extension sdras.night-owl --force
code --install-extension GrapeCity.gc-excelviewer --force
code --install-extension mhutchie.git-graph --force
code --install-extension ex-codes.pine-script-syntax-highlighter --force
code --install-extension rust-lang.rust-analyzer --force
code --install-extension dsznajder.es7-react-js-snippets --force
code --install-extension ritwickdey.LiveServer --force
code --install-extension ms-vscode-remote.remote-ssh --force
code --install-extension miguelsolorio.fluent-icons --force
code --install-extension ms-python.black-formatter --force
code --install-extension BriteSnow.vscode-toggle-quotes --force
code --install-extension Percy.vscode-pydata-viewer --force
code --install-extension pepri.subtitles-editor --force

echo "\nbot: finished installing vscode extentions!\n"