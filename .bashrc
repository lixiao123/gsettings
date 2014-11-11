# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
alias ll='ls -Al'
alias l='ls -Al'
alias emerge='emerge --ask '

export LANG="en_US.UTF-8"
export LC_COLLATE="zh_CN.UTF-8"
export LC_CTYPE="zh_CN.UTF-8"

export HISTSIZE=10000

#Enable tab-completion
complete -cf sudo 
complete -cf man

#add use PATH
export PATH="$PATH":~/bin:~/android/android-tools/platform-tools

#set for awesome EDITOR
export EDITOR=vim
#export CDPATH=~/github/c-coder/

export PKG_CONFIG_PATH=/usr/lib/pkgconfig/

#use bash-completion
if [ -f /etc/profile.d/bash-completion.sh ]; then
	. /etc/profile.d/bash-completion.sh
fi
