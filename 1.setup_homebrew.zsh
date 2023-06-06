#!/usr/bin/env zsh

echo "\nbot: starting homebrew setup!"

if exists brew; then
echo "bot: brew exists, skipping install!"
else
echo "bot: brew doesn't exist, continuing with the install!"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "bot: finished homebrew setup!\n"

echo "\nbot: starting brew installations!\n"
brew bundle --verbose
echo "\nbot: finished brew installations!\n"