# .bashrc

# User specific aliases and functions

alias ls='ls -GlaF'
alias git=hub

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

PATH=/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH:$HOME/bin:/Applications/ec2-api-tools/bin:/opt/local/bin:/opt/local/sbin

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export EC2_HOME=/Applications/ec2-api-tools
export EC2_CERT=~/.ec2/cert-FEP7WJZ2U5HWPBZVXBMETW2BYMETGI6S.pem
export EC2_PRIVATE_KEY=~/.ec2/pk-FEP7WJZ2U5HWPBZVXBMETW2BYMETGI6S.pem
export PATH
unset USERNAME


#export PS1="\u@\h|\e[01;34m\w\e[00m $ "
export PS1='[\u@\h|\e[01;34m\w$(__git_ps1 " (%s)")\e[01;0m]\$ '


source ~/.git-completion.sh
source ~/.git-flow-completion.sh

if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi
