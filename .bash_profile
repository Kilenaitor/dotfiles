export PATH=/usr/local/bin:$PATH

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

#Aliases
alias google='open -a safari http://www.google.com/'
alias c='clear;'
alias cs14='cd ~/Documents/UCR/CS14'
alias desktop='cd ~/Desktop'
alias g11='g++ --std=c++11'
alias ll='ls -lh'
alias ucr='cd ~/Documents/UCR'
alias csedrive='ssh -Y kmins002@well.cs.ucr.edu'
alias csesftp='sftp kmins002@well.cs.ucr.edu'
alias rmi='rm -i'
#Clear the terminal
clear;

[[ "$PS1" ]] && echo -e "\n\n$(fortune)\n\n"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export PS1="\[\033[01;37m\]\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi) $(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;32m\]\u@\h'; fi)\[\033[01;34m\] \w \$\[\033[00m\] "
##export PS1="\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[0;32m\];)\"; else echo \"\[\033[0;31m\];(\"; fi)\[\033[00m\] : "
