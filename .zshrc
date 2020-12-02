# Path to your oh-my-zsh installation.
export ZSH=/Users/dimitarralev/.oh-my-zsh

export LC_ALL=en_US.UTF-8

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sobole"

export locally="http://localhost"


# Add shortcuts for folders
hash -d -- code=/Users/dimitarralev/code

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sublime osx gitfast httpie jsontools vagrant z docker tmux zsh-syntax-highlighting)

# export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.rvm/bin:$GOPATH/bin"
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.rvm/bin"
source ~/.env.secrets

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
alias docker_clear='docker container prune && docker rmi $(docker images -q) && docker rm $(docker ps -a -q)'
alias gohome='cd ~/go/src'

# TODO: THink about changing this, perhaps adding a prefix will fix
# the scaff issue (can't name the alias scaff becouse there's an
# command with the same keyword...duuuh)
alias home='tmuxinator start home'
alias base='tmuxinator start base'
alias scaffcode='tmuxinator start scaff'
alias lounge='tmuxinator start lofi-lounge'
alias moodytags='tmuxinator start moodytags'
alias moodytags-client='tmuxinator start moodytags-client'
alias subalogue='tmuxinator start subalogue'

# redefine prompt_context for hiding user@hostname
prompt_context () { }

export EDITOR='vim'
# export GOROOT=/usr/local/go
# export GOPATH=$HOME/go

source ~/.tmuxinator.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='ag -l'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

peek() { tmux split-window -p 33 "$EDITOR" "$@" || exit; }
