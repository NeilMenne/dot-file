# use oh my zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME=lambda

set -a
PROMPT='%T %? %m%# '
WORDCHARS="*?[]~=&;!#$%^(){}<>"
HISTSIZE=
SAVEHIST=
HISTFILE=~/.zhistory

plugins=(git battery github node colorize sudo virtualenv brew docker docker-compose lein npm vagrant)
source $ZSH/oh-my-zsh.sh

DEV_USER='neil_pylon'

# Aliases
alias la='ls -lah'
alias gs='git status'
alias gb='git branch -av'
alias gg='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias irc="TERM=screen-256color irssi"
alias nolimit="sudo sh -c 'ulimit -n 3072 && exec su $LOGNAME'"
alias fv="fortune | tr '[:upper:]' '[:lower:]' | tr '\n' ' ' | sed -r 's/[^a-z]+/-/g' | cut -c 1-60"
alias pytest="python -m pytest"
alias pla="ls -1 */__init__.py | sed -r 's|/.*||' | xargs pylint -r n"
alias azd="aws-vault exec $DEV_USER --"


setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY
[ "$TERM" = dumb ] && unsetopt zle

export EDITOR='emacs'
export NODE_NO_READLINE=1

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# mactex
# eval `/usr/libexec/path_helper -s`

# pyenv and virtual-env
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

HADOOP_HOME="/usr/local/hadoop/3.0.0-alpha2"
SPARK_HOME="/usr/local/spark/2.1.0"
PYSPARK_DRIVER_PYTHON='jupyter'
PYSPARK_DRIVER_PYTHON_OPTS='notebook'
PATH="$PATH:$SPARK_HOME/bin:$HADOOP_HOME/bin"
SPARK_DIST_CLASSPATH=$(hadoop classpath)
