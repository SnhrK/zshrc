# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:~/.composer/vendor/bin/

#nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH
export NODEBREW_ROOT=/usr/local/var/nodebrew

#Yarn
export PATH=$PATH:/opt/yarn-[version]/bin

#HOMEBREW
export HOMEBREW_GITHUB_API_TOKEN=""

#go
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"

#direnv
export EDITOR=/usr/bin/vim
eval "$(direnv hook zsh)"

#pyenv
export PYENV_ROOT=${HOME}/.pyenv
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# Path to your oh-my-zsh installation.
export ZSH=/Users/suna/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="sunrise"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# Add wisely, as too many plugins slow down shell startup.
plugins=(brew gem git yum)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#cd nothing dir
setopt auto_cd

# beep soud nothing
setopt no_beep
setopt nolistbeep

#history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space

fpath=(/path/to/homebrew/share/zsh-completions $fpath)

autoload -U compinit
compinit -u

fpath=($HOME/.oh-my-zsh/custom/plugins/cd-bookmark(N-/) $fpath)
#fpath=($HOME/Applications/Docker.app/Contents/Resources/etc/docker.zsh-completion $fpath)
#fpath=($HOME/Applications/Docker.app/Contents/Resources/etc/docker-machine.zsh-completion $fpath)

fpath=(/usr/local/share/zsh/site-functions $fpath)

if [ -e ~/.zsh/completions ]; then
  fpath=(~/.zsh/completions $fpath)
fi

autoload -U compinit
compinit

autoload -Uz cd-bookmark
alias cb='cd-bookmark'
alias lg='log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'
alias dk='docker'
alias vd='vim .'
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias gc='gcloud'
alias x='exit'
alias dmo='docker ps -a -f name=alm -f name=ripple -f name=wave'
alias dr='docker restart'
alias dc='docker-compose'
alias dcup='docker-compose up'
alias dcst='docker-compose stop'

#source /Users/suna/Downloads/google-cloud-sdk/path.zsh.inc
#source /Users/suna/Downloads/google-cloud-sdk/completion.zsh.inc
#source /Applications/Docker.app/Contents/Resources/etc/docker.zsh-completion
source /Applications/Docker.app/Contents/Resources/etc/docker-machine.zsh-completion
source <(kubectl completion zsh)
source /usr/local/share/zsh/site-functions
# added by travis gem
