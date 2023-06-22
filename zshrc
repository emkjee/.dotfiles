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
alias ll='exa -laFh --git --icons'
alias exa='exa -laFh --git --icons'
alias list='exa -laFh --git --icons'
alias trail='<<<${(F)path}'
alias rm='trash'
alias e="hx"
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
#>>>setup fzf
