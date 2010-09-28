# .bashrc

# User specific aliases and functions

alias ls='ls -GlaF'
alias git='hub'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

function proml {
local BLUE="\[\033[0;34m\]"
local RED="\[\033[0;31m\]"
local LIGHT_RED="\[\033[1;31m\]"
local WHITE="\[\033[1;37m\]"
local NO_COLOUR="\[\033[0m\]"
case $TERM in
    xterm*|rxvt*)
        TITLEBAR='\[\033]0;\u@\h:\w\007\]'
        ;;
    *)
        TITLEBAR=""
        ;;
esac

PS1="${TITLEBAR}\
$BLUE[$RED\$(date +%H%M)$BLUE]\
$BLUE[$LIGHT_RED\u@\h:\w$BLUE]\
$WHITE\$$NO_COLOUR "
PS2='> '
PS4='+ '
}

if [[ -s /Users/jeffmcfadden/.rvm/scripts/rvm ]] ; then source /Users/jeffmcfadden/.rvm/scripts/rvm ; fi
