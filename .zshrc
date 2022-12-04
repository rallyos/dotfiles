# Use go get stuff
export PATH=$PATH:/Users/dimitarralev/go/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

alias v="nvim"
alias vimrc="nvim ~/.vimrc"
alias zshrc="nvim ~/.zshrc"
alias reload="source ~/.zshrc"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
