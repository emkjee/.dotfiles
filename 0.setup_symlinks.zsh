
# create symlinks
echo "\nbot: start creating symlinks!"

if [[ -f "$HOME/.zshenv" ]]; then
    cp $HOME/.zshenv $HOME/.zshenv.bkup-$(date +%F)
fi
ln -sf $HOME/Dotfiles/zshenv $HOME/.zshenv; echo "$HOME/.zshenv created"

if [[ -f "$HOME/.zshrc" ]]; then
    cp $HOME/.zshrc $HOME/.zshrc.bkup-$(date +%F)
fi
ln -sf $HOME/Dotfiles/zshrc $HOME/.zshrc; echo "$HOME/.zshrc created"

if [[ -f "$HOME/.zlogin" ]]; then
    cp $HOME/.zlogin $HOME/.zlogin.bkup-$(date +%F)
fi
ln -sf $HOME/Dotfiles/zlogin $HOME/.zlogin; echo "$HOME/.zlogin created"


if [[ -f "$HOME/.vimrc" ]]; then
    cp $HOME/.vimrc $HOME/.vimrc.bkup-$(date +%F)
fi
ln -sf $HOME/Dotfiles/vimrc $HOME/.vimrc; echo "$HOME/.vimrc created"

if [[ -f "$HOME/.zprofile" ]]; then
    cp $HOME/.zshrc $HOME/.zprofile.bkup-$(date +%F)
fi
ln -sf $HOME/Dotfiles/zprofile $HOME/.zprofile; echo "$HOME/.zprofile created"

if [[ -f "$HOME/.ideavimrc" ]]; then
    cp $HOME/.ideavimrc $HOME/.ideavimrc.bkup-$(date +%F)
fi
ln -sf $HOME/Dotfiles/ideavimrc $HOME/.ideavimrc; echo "$HOME/.ideavimrc created"

if [[ -f "$HOME/.gitconfig" ]]; then
    cp $HOME/.gitconfig $HOME/.gitconfig.bkup-$(date +%F)
fi
ln -sf $HOME/Dotfiles/gitconfig $HOME/.gitconfig; echo "$HOME/.gitconfig created"

if [[ -f "$HOME/.config/helix/config.toml" ]]; then
    cp $HOME/.config/helix/config.toml $HOME/.config/helix/config.toml.bkup-$(date +%F)
fi
ln -sf $HOME/Dotfiles/helix_config.toml $HOME/.config/helix/config.toml; echo "$HOME/.config/helix/config.toml created"

echo "bot: finished creating symlinks!\n"

#reload zsh to reflect changes
echo "bot: reload zsh!\n"
exec zsh
