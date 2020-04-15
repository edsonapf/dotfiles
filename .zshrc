# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="gruvbox"
SOLARIZED_THEME="dark"

plugins=(git pip python zsh-autosuggestions z zsh-syntax-highlighting osx tmux)

ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export PATH=$HOME/usr/bin:/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/games:/sbin:/usr/sbin
#export TERM=alacritty

alias ls="ls --color"
alias la="ls -a"
alias l="ls -alF"

export EDITOR=vim

# local environment
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

export TERM=xterm-256color
