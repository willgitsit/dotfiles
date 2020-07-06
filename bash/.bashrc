if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

set -o ignoreeof
shopt -s direxpand

alias ls='ls -hF --color=auto'
alias ll='ls -al'

alias pu='pushd'
alias po='popd'
alias ds='dirs -v'

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -ip'

alias h='history'

alias vi='vim'

function path() {
  eval a=\$$1
  echo -e ${a//:/'\n'}
}

if [[ $PS1 ]]; then
  function set_prompt() {
    local workname=${WORK##*/workspaces/}
    local wp=${WORK:+"\[\e[2;31m\]$workname\[\e[0m\]:"}
    #local homed="${PWD/${HOME}/~}"
    #local d="${homed//$WORK/$workname}"
    PS1="\[\e[0;34m\]\w\[\e[97m\]\$\[\e[0m\] "
  }

  PROMPT_DIRTRIM=3
  PROMPT_COMMAND=set_prompt
fi
