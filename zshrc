#Load antigen.sh and then all of the bundles
source ~/.antigen/antigen.zsh
source ~/.zsh/antigen_settings.zsh
source ~/.aliases

# Show the current directory AND running command in the screen window title
# inspired from http://www.davidpashley.com/articles/xterm-titles-with-bash.html
if [ "$SHELL" = '/usr/bin/zsh' ]
then
    case $TERM in
         rxvt|*term)
         precmd() { print -Pn "\e]0;%m:%~\a" }
         preexec () { print -Pn "\e]0;$1\a" }
         ;;
    esac
fi

#Vim keybindings
bindkey -v
#Kill Vi Lag
export KEYTIMEOUT=1

#Set up Zaw to work with CTRL+R
source ~/.dotfiles/antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zaw.git/zaw.zsh
bindkey '^R' zaw-history
bindkey -M filterselect '^R' down-line-or-history
bindkey -M filterselect '^S' up-line-or-history
bindkey -M filterselect '^E' accept-search

zstyle ':filter-select:highlight' matched fg=green
zstyle ':filter-select' max-lines 3
zstyle ':filter-select' case-insensitive yes # enable case-insensitive 
zstyle ':filter-select' extended-search yes # see below


#ZSH-History-Substring-Search bindings 

# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# bind UP and DOWN arrow keys (compatibility fallback
# for Ubuntu 12.04, Fedora 21, and MacOSX 10.9 users)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

#Bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down



#TO DO
#   make my vimrc be dominant over the zsh theme!
#   make it so that pwd and vim filename are displayed in caption
#   find a theme (or modify one) so that if VI mode is active in CLI then it is displayed


#   fix my exports!
#   remove homebrew shit
#   keep ssh sessions alive!
#   set up powerline/powerline$
#   set up gitflow
#   on creating a new window, call randquote
#   
#   git submodule add powerline/fonts.git in the .fonts folder, then install.sh
#   set up vundle
#   



#case $TERM in
#    *xterm*|rxvt|(dt|k|E)term)
#        precmd () {
#            print -Pn "\033]0;%n@%m : %~\007"
#        }
#        preexec () {
#            print -Pn "\033]0;%n@%m : <$1>\007"
#        }
#        ;;
#esac


# turn off debug trap, turn on later if we're in screen
#trap "" DEBUG
#if [ "$TERM" = "BASHscreen" ]; then
#    export PROMPT_COMMAND='true'
#    set_screen_window() {
#      HPWD=`basename "$PWD"`
#      if [ "$HPWD" = "$USER" ]; then HPWD='~'; fi
#      if [ ${#HPWD} -ge 10 ]; then HPWD='..'${HPWD:${#HPWD}-8:${#HPWD}}; fi
#      case "$BASH_COMMAND" in
#        *\033]0*);;
#        "true")
#            printf '\ek%s\e\\' "$HPWD:"
#            ;;
#        *)
#            printf '\ek%s\e\\' "$HPWD:${BASH_COMMAND:0:20}"
#            ;;
#      esac
#    }
#    trap set_screen_window DEBUG
#fi
