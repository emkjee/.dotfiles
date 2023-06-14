
# create symlinks
echo "\nbot: start creating symlinks!"

if [[ -f "$HOME/.zshenv" ]]; then
    cp $HOME/.zshenv $HOME/.zshenv.bkup
fi
ln -sf $HOME/Dotfiles/zshenv $HOME/.zshenv; echo "$HOME/.zshenv created"

if [[ -f "$HOME/.zshrc" ]]; then
    cp $HOME/.zshrc $HOME/.zshrc.bkup
fi
ln -sf $HOME/Dotfiles/zshrc $HOME/.zshrc; echo "$HOME/.zshrc created"

if [[ -f "$HOME/.gitconfig" ]]; then
    cp $HOME/.gitconfig $HOME/.gitconfig.bkup
fi
ln -sf $HOME/Dotfiles/gitconfig $HOME/.gitconfig; echo "$HOME/.gitconfig created"

if [[ -f "$HOME/.config/helix/config.toml" ]]; then
    cp $HOME/.config/helix/config.toml $HOME/.config/helix/config.toml.bkup
fi
ln -sf $HOME/Dotfiles/helix_config.toml $HOME/.config/helix/config.toml; echo "$HOME/.config/helix/config.toml created"

echo "bot: finished creating symlinks!\n"

#reload zsh to reflect changes
echo "bot: reload zsh!\n"
exec zsh