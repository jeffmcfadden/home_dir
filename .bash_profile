# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

alias ls='ls -GlaF'



# User specific environment and startup programs
CVSROOT=:pserver:jeff@192.168.152.240:/usr/src/cvs/code
SVN_EDITOR=vim
PATH=$PATH:/usr/local/git/bin:$HOME/bin:/Applications/ec2-api-tools/bin

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export EC2_HOME=/Applications/ec2-api-tools
export EC2_CERT=~/.ec2/cert-FEP7WJZ2U5HWPBZVXBMETW2BYMETGI6S.pem
export EC2_PRIVATE_KEY=~/.ec2/pk-FEP7WJZ2U5HWPBZVXBMETW2BYMETGI6S.pem
export CVSROOT
export SVN_EDITOR
export PATH
unset USERNAME


export PS1="\u@\h|\e[01;34m\w\e[00m $ "

##
# Your previous /Users/jeffmcfadden/.bash_profile file was backed up as /Users/jeffmcfadden/.bash_profile.macports-saved_2009-08-14_at_10:53:40
##

# MacPorts Installer addition on 2009-08-14_at_10:53:40: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2009-08-14_at_10:53:40: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.

export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

rvm use 1.9.1

if [[ -s /Users/jeffmcfadden/.rvm/scripts/rvm ]] ; then source /Users/jeffmcfadden/.rvm/scripts/rvm ; fi
