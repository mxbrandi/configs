# Aliases
alias ls='ls --color=auto'
alias ll='ls -lh'
alias l='ls -lh'
alias la='ls -lah'
alias i='yay -Sy'
alias ui='yay -Rs'
alias up='yay -Syu'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias dh='dirs -v'
alias vim='nvim'
alias fgrep='fgrep --color=auto'
alias open='xdg-open'
alias search='pkgfile'
alias certinfo-text='openssl x509 -noout -text -in'
alias csrinfo-text='openssl req -noout -text -in'

#alias certinfo='openssl x509 -noout -serial -subject -issuer -startdate -enddate -fingerprint -in' # prints no key size, need a function:
function certinfo() {
  keysize=$(openssl x509 -noout -text -in "$@" | grep -i "Public-Key" | tr -d ' ')
  certinfo=$(openssl x509 -noout -serial -subject -issuer -startdate -enddate -fingerprint -in "$@")
  echo -e "$certinfo\n$keysize"
}

#alias certinfo-full='openssl x509 -noout -serial -subject -issuer -startdate -enddate -fingerprint -purpose -in' # prints no key size, need a function:
function certinfo-full() {
  keysize=$(openssl x509 -noout -text -in "$@" | grep -i "Public-Key" | tr -d ' ')
  certinfo=$(openssl x509 -noout -serial -subject -issuer -startdate -enddate -fingerprint -purpose -in "$@")
  echo -e "$certinfo\n$keysize"
}

#alias csrinfo='openssl req -noout -subject -in' # prints no key size, need a function:
function csrinfo() {
  keysize=$(openssl req -noout -text -in "$@" | grep -i "Public-Key" | tr -d ' ')
  csrinfo=$(openssl req -noout -subject -in "$@")
  echo -e "$csrinfo\n$keysize"
}

function ssh() {
  source $REMOTE_TERMINAL_COLOR; command zssh "$@"; source $TERMINAL_COLOR;
}

# Terminal color (https://github.com/chriskempson/base16-shell)
TERMINAL_COLOR=~/.config/base16-shell/scripts/base16-cupertino.sh
source $TERMINAL_COLOR

: ' Below is a collection of light terminal color schemes

~/.config/base16-shell/scripts/base16-atelier-cave.sh
~/.config/base16-shell/scripts/base16-atelier-forest-light.sh
~/.config/base16-shell/scripts/base16-atelier-heath-light.sh
~/.config/base16-shell/scripts/base16-atelier-lakeside-light.sh
~/.config/base16-shell/scripts/base16-atelier-sulphurpool-light.sh
~/.config/base16-shell/scripts/base16-classic-light.sh
~/.config/base16-shell/scripts/base16-cupertino.sh
~/.config/base16-shell/scripts/base16-default-light.sh
~/.config/base16-shell/scripts/base16-fruit-soda.sh
~/.config/base16-shell/scripts/base16-google-light.sh
~/.config/base16-shell/scripts/base16-harmonic-light.sh
~/.config/base16-shell/scripts/base16-material-lighter.sh
~/.config/base16-shell/scripts/base16-mexico-light.sh
~/.config/base16-shell/scripts/base16-one-light.sh
~/.config/base16-shell/scripts/base16-shapeshifter.sh
~/.config/base16-shell/scripts/base16-summerfruit-light.sh
~/.config/base16-shell/scripts/base16-tomorrow.sh
~/.config/base16-shell/scripts/base16-unikitty-light.sh

'

REMOTE_TERMINAL_COLOR=~/.config/base16-shell/scripts/base16-black-metal.sh

# Neovim as default editor
VISUAL=nvim
EDITOR=nvim

# Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Set up Node Version Manager
source /usr/share/nvm/init-nvm.sh

# powerline
powerline-daemon -q
source /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh
fpath=($fpath "/home/max/.zfunctions")

### Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

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

### END Set Spaceship ZSH as a prompt

# auto suggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^ ' autosuggest-accept
#bindkey '^E\n' autosuggest-execute
#bindkey '^[[5~' autosuggest-fetch
