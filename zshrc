#Syntax Highlighting man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

#>>>homebrew setups
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_CASK_OPTS="--no-quarantine"
#<<<homebrew setups

#>>>setup starship
export STARSHIP_CONFIG=$HOME/Dotfiles/starship.toml
eval "$(starship init zsh)"
#<<<setup starship

#>>>alias
alias ls='exa -laFh --git --icons'
alias ll='exa -laFh --git --icons --ignore-glob="*gmail.com*"'
alias lla='exa -laRFh --git --icons' #for ignoring files / dirs use --ignore-glob
alias exa='exa -laFh --git --icons'
alias list='exa -laFh --git --icons'
alias trail='<<<${(F)path}'
alias rm='trash'
alias e="nvim"
#alias cd="z"
alias fn="gfind"
alias sqlite3=$(brew --prefix)/opt/sqlite/bin/sqlite3
alias start_mongo="brew services start mongodb-community"
alias stop_mongo="brew services stop mongodb-community"
alias start_mongod="mongod --config /usr/local/etc/mongod.conf --fork"
alias list_services="brew services list"
alias scratch="cd $HOME/python_projects/scratch; pipenv shell"
alias pyscratch="scratch"
alias zconfig="nvim ~/.zshrc"
alias zidea="nvim ~/.ideavimrc"
#<<<alias

#>>>zsh plugins
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#<<<zsh plugins

#>>>python
export JUPYTER_CONFIG_DIR="$HOME/.config/jupyter"
export IPYTHONDIR="$HOME/.config/ipython"
#<<<python

#>>>setup zoxide
eval "$(zoxide init zsh)"
#<<<setup zoxide

#>>>setup fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--preview 'bat --color=always {}'"
export FZF_CTRL_T_OPTS="
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"
#<<<setup fzf

#>>>setup findutils
#export PATH="$PATH:/usr/local/opt/findutils/libexec/gnubin"
#<<<setup findutils
#export PATH="$(brew --prefix)/opt/python@3.12/libexec/bin:$PATH"
#activate_current
#export PATH="$(python3 -m site --user-base)/bin:$PATH"

# Created by `pipx` on 2023-11-01 03:25:05
export PATH="$PATH:/Users/emkjee/.local/bin"
export PATH="$PATH:/Users/emkjee/.cargo/bin"


