
# create symlinks
echo "\nbot: start creating symlinks!"
ln -sf ~/Dotfiles/zshenv ~/.zshenv; echo ".zshenv created"
ln -sf ~/Dotfiles/zshrc ~/.zshrc; echo ".zshrc created"
ln -sf ~/Dotfiles/gitconfig ~/.gitconfig; echo ".gitconfig created"
echo "bot: finished creating symlinks!\n"

#reload zsh to reflect changes
echo "bot: reload zsh!\n"
exec zsh