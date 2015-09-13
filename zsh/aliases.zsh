# Why ever use vi when we have vim?
alias vi='vim'

# Make some possibly destructive commands more interactive.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
 
# Colorize output, add file type indicator, and put sizes in human readable format
alias lsg='ls -GFh'

# Same as above, but in long listing format
alias llg='ls -GFhl'

# Add some easy shortcuts for formatted directory listings and add a touch of color.
alias ll='ls -lF --color=auto'
alias la='ls -alF --color=auto'
alias ls='ls -F'
alias lsh='ls -a | grep "^\."'
alias l='ls'
alias sl='ls'
alias dc='cd'
alias s='screen'
alias sr='screen -rd -ln on'

alias datetest="echo `date +%Y%m%d%S`" 
function lt() { ls -ltrsa "$@" | tail; }
function psgrep() { ps axuf | grep -v grep | grep "$@" -i --color=auto; }
function fname() { find . -iname "*$@*"; }
 
# Make grep more user friendly by highlighting matches
# and exclude grepping through .svn folders.
alias grep='grep --color=auto' #--exclude-dir=\.svn

# Change Directory multiple levels
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias ..6="cd ../../../../../.."
alias ..7="cd ../../../../../../.."
