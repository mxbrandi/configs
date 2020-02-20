# Requirements: oh-my-zsh
# (install with package manager of your distribution)
#
# Plugin `zsh-autosuggestions`
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# 
# Plugin `zsh-syntax-highlighting`
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#
# Spaceship theme
# git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
# ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

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


### Spaceship theme config
#SPACESHIP_VI_MODE_SHOW=false

# ORDER
#SPACESHIP_PROMPT_ORDER=(
#  time     #
#  vi_mode  # these sections will be
#  user     # before prompt char
#  host     #
#  char
#  dir
#  git
#  node
#  ruby
#  xcode
#  swift
#  golang
#  docker
#  venv
#  pyenv
#)

## USER
#SPACESHIP_USER_PREFIX="" # remove `with` before username
#SPACESHIP_USER_SUFFIX="" # remove space before host
#
## HOST
## Result will look like this:
##   username@:(hostname)
#SPACESHIP_HOST_PREFIX="@:("
#SPACESHIP_HOST_SUFFIX=") "

# DIR
#SPACESHIP_DIR_PREFIX='' # disable directory prefix, cause it's not the first section
#SPACESHIP_DIR_TRUNC='1' # show only last directory

# Show all folders of cwd in prompt
SPACESHIP_DIR_TRUNC=0

# GIT
# Disable git symbol
SPACESHIP_GIT_SYMBOL="" # disable git prefix
SPACESHIP_GIT_BRANCH_PREFIX="" # disable branch prefix too
# Wrap git in `git:(...)`
SPACESHIP_GIT_PREFIX='git:('
SPACESHIP_GIT_SUFFIX=") "
SPACESHIP_GIT_BRANCH_SUFFIX="" # remove space after branch name
# Unwrap git status from `[...]`
SPACESHIP_GIT_STATUS_PREFIX=""
SPACESHIP_GIT_STATUS_SUFFIX=""

# NODE
SPACESHIP_NODE_PREFIX="node:("
SPACESHIP_NODE_SUFFIX=") "
SPACESHIP_NODE_SYMBOL=""

# RUBY
SPACESHIP_RUBY_PREFIX="ruby:("
SPACESHIP_RUBY_SUFFIX=") "
SPACESHIP_RUBY_SYMBOL=""

# XCODE
SPACESHIP_XCODE_PREFIX="xcode:("
SPACESHIP_XCODE_SUFFIX=") "
SPACESHIP_XCODE_SYMBOL=""

# SWIFT
SPACESHIP_SWIFT_PREFIX="swift:("
SPACESHIP_SWIFT_SUFFIX=") "
SPACESHIP_SWIFT_SYMBOL=""

# GOLANG
SPACESHIP_GOLANG_PREFIX="go:("
SPACESHIP_GOLANG_SUFFIX=") "
SPACESHIP_GOLANG_SYMBOL=""

# DOCKER
SPACESHIP_DOCKER_PREFIX="docker:("
SPACESHIP_DOCKER_SUFFIX=") "
SPACESHIP_DOCKER_SYMBOL=""

# VENV
SPACESHIP_VENV_PREFIX="venv:("
SPACESHIP_VENV_SUFFIX=") "

# PYENV
SPACESHIP_PYENV_PREFIX="python:("
SPACESHIP_PYENV_SUFFIX=") "
SPACESHIP_PYENV_SYMBOL=""
### End Spaceship theme config

bindkey '^ ' autosuggest-accept
#bindkey '^n' autosuggest-fetch

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Aliases
alias ls='ls --color=auto'
alias ll='ls -lh'
alias l='ls -lah'
alias la='ls -lah'
alias i='yay -Sy'
alias ui='yay -Rs'
alias up='yay -Syu'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias dh='dirs -v'
#alias vim='nvim'
alias fgrep='fgrep --color=auto'
#alias open='xdg-open'
alias search='pkgfile'
alias certinfo-text='openssl x509 -noout -text -in'
alias csrinfo-text='openssl req -noout -text -in'
alias youtube-dl-audio='youtube-dl -x --audio-format mp3'  # pip install youtube-dl

function certinfo() {
  text=$(openssl x509 -noout -text -in "$@")
  keysize=$(echo "$text" | grep "Public-Key" | tr -d ' ')
  keyusage=$(echo "$text" | grep "Key Usage" -A1 | tr -d ' ' | sed 's/X509v3//')
  san=$(echo "$text" | grep "Subject Alternative Name" -A1 | tr -d ' ' | sed 's/X509v3//')
  certinfo=$(openssl x509 -noout -serial -subject -issuer -startdate -enddate -fingerprint -in "$@")
  echo -e "$certinfo\n$keysize\n$keyusage\n$san"
}

function csrinfo() {
  keysize=$(openssl req -noout -text -in "$@" | grep -i "Public-Key" | tr -d ' ')
  csrinfo=$(openssl req -noout -subject -in "$@")
  echo -e "$csrinfo\n$keysize"
}


# Terminal color (https://github.com/chriskempson/base16-shell)
#TERMINAL_COLOR=~/.config/base16-shell/scripts/base16-cupertino.sh
#source $TERMINAL_COLOR
#
#REMOTE_TERMINAL_COLOR=~/.config/base16-shell/scripts/base16-black-metal.sh
#
#function ssh() {
#  source $REMOTE_TERMINAL_COLOR; command zssh "$@"; source $TERMINAL_COLOR;
#}

# vim as default editor
VISUAL=vim
EDITOR=vim
#
#
