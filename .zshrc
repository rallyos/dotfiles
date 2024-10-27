# Use go get stuff
export PATH=$PATH:/Users/dimitarralev/go/bin:/Applications/Postgres.app/Contents/Versions/16/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

alias v="nvim"
alias vimrc="nvim ~/.config/nvim"
alias zshrc="nvim ~/.zshrc"
alias reload="source ~/.zshrc"

source <(fzf --zsh)

