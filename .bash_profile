export PATH=/usr/local/bin:$PATH
source ~/.profile

export EDITOR=vim

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

#Commands
shuffle() {
    awk 'BEGIN{srand();} {printf "%06d %s\n", rand()*1000000, $0;}' | sort -n | cut -c8-
}

function :wq {
    echo "This isn't vim, silly."
}

sqrt() {
    echo "sqrt($1)" | bc -l;
}

#Aliases
alias g11='g++ --std=c++11'
alias ll='ls -lh'
alias rmi='rm -i'
alias cdd='cd ~/Desktop'
alias cdu='cd ~/UCR'
alias mkdir='mkdir -pv'
alias nl='nl -b a'
alias cppcheck='cppcheck --verbose --enable=all --enable=style --suppress=missingIncludeSystem'
stty sane;
stty -echoctl;

export PATH="$HOME/Desktop/pintos/src/utils:$PATH"

#Clear the terminal
clear;

[[ "$PS1" ]] && echo -e "\n\n$(fortune)\n\n"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="\[\033[01;34m\]\w\n\[\033[01;37m\]\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi) $(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;32m\]\u@\h'; fi)\[\033[01;34m\] \$\[\033[00m\] "
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/texlive/2014/bin/universal-darwin:$PATH"
export PATH="/Users/Kilenaitor/.rvm/gems/ruby-2.1.3/bin:$PATH"

_expand()
{
    return 0;
}
if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Custom configurations for LESS
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=" -R "
alias less='less -m -N -g -i -J --underline-special --SILENT'
alias more='less'
