source /usr/local/homebrew-now/etc/bashrc
#color for light color terminal themes
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
#color for dark terminal themes
#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
################################################################################
alias ls='ls -GFhlatr'
alias jm='java -XX:+PrintFlagsFinal -version | grep HeapSize'
alias gitlog='git log --author="ankur.saran"'
alias cl='clear'
###############################################################################
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk/Contents/Home"
PATH=$PATH:/Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk/Contents/Home/bin
ANT_HOME="/usr/local/homebrew/Cellar/ant/1.9.4/libexec"
PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$ANT_HOME/bin:$JAVA_HOME/bin"
export PATH
echo "git push origin HEAD:refs/for/track/itomgold"

####################################################################################
#reset=$(tput sgr0)
#parse_git_branch() {

#	    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'

 #   }
 #export PS1="\[\e[0;35m\]\u@\[\e[0;36m\]\h\[\e[0;33m\] \W\\[\e[0;31m\]\$(parse_git_branch)"   
 #export PS1="\[\e[0;35m\]\u@\[\e[0;36m\]\h\[\e[0;33m\] \W\\[\e[0;31m\]\$(parse_git_branch)\[1;90m ➜"
###################################################################################
function parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
 
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"
 
PS1="$NO_COLOUR:\w$RED\$(parse_git_branch)$NO_COLOUR\$ ➜ "

