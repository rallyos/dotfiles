# Path to your oh-my-zsh installation.
export ZSH=/Users/dimitarralev/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bullet-train" # Really cool!
BULLETTRAIN_RUBY_SHOW=false
BULLETTRAIN_TIME_SHOW=false

export locally="http://localhost"


# Add shortcuts for folders
hash -d -- projects=/Users/dimitarralev/Projects

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sublime zsh-syntax-highlighting rails osx gitfast httpie jsontools vagrant z docker tmux)

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.rvm/bin"

source $ZSH/oh-my-zsh.sh


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias v="vim"
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias reload="source ~/.zshrc"
alias psqlstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias envstart="cd env && source bin/activate && cd .."
alias docker_clear='docker container prune && docker rmi $(docker images -q) && docker rm $(docker ps -a -q)'
alias gohome='cd ~/go/src'

alias influencer='tmuxinator start influencer'
alias home='tmuxinator start home'
alias base='tmuxinator start base'

# redefine prompt_context for hiding user@hostname
prompt_context () { }

export EDITOR='vim'
export GOROOT=/usr/local/go
export GOPATH=$HOME/go

source ~/.aws_secrets.env
source ~/.s.env
source ~/tmuxinator.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='ag -l'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

peek() { tmux split-window -p 33 "$EDITOR" "$@" || exit; }
