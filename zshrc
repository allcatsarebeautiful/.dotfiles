#Load antigen.sh and then all of the bundles
source ~/.antigen/antigen.zsh
source ~/.zsh/antigen_settings.zsh


# turn off debug trap, turn on later if we're in screen
trap "" DEBUG

# Show the current directory AND running command in the screen window title
# inspired from http://www.davidpashley.com/articles/xterm-titles-with-bash.html
if [ "$TERM" = "fuckscreen" ]; then
    export PROMPT_COMMAND='true'
    set_screen_window() {
      HPWD=`basename "$PWD"`
      if [ "$HPWD" = "$USER" ]; then HPWD='~'; fi
      if [ ${#HPWD} -ge 10 ]; then HPWD='..'${HPWD:${#HPWD}-8:${#HPWD}}; fi
      case "$BASH_COMMAND" in
        *\033]0*);;
        "true")
            printf '\ek%s\e\\' "$HPWD:"
            ;;
        *)
            printf '\ek%s\e\\' "$HPWD:${BASH_COMMAND:0:20}"
            ;;
      esac
    }
    trap set_screen_window DEBUG
fi




#source ~/.zsh/colors.zsh
#source ~/.zsh/setopt.zsh
#source ~/.zsh/exports.zsh
#source ~/.zsh/prompt.zsh
#source ~/.zsh/completion.zsh
#source ~/.zsh/aliases.zsh
#source ~/.zsh/bindkeys.zsh
#source ~/.zsh/functions.zsh
#source ~/.zsh/history.zsh
#source ~/.zsh/zsh_hooks.zsh



#TO DO
#   Which of those items do i still want to keep? what is redundant and dumb at this point?
#   make my vimrc be dominant over the zsh theme!
#   make it so that pwd and vim filename are displayed in caption



#   fix my exports!
#   remove homebrew shit
#   if screen session exists, load it
#   keep ssh sessions alive!
#   add in the vim package for zsh
#   set up powerline/powerline$
#   set up gitflow
#   on creating a new window, call randquote
#   
#   git submodule add powerline/fonts.git in the .fonts folder, then install.sh
#   set up vundle
#   


#Vim keybindings
bindkey -v
export KEYTIMEOUT=1

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

if [ "$SHELL" = '/usr/bin/zsh' ]
then
    case $TERM in
         rxvt|*term)
         precmd() { print -Pn "\e]0;%m:%~\a" }
         preexec () { print -Pn "\e]0;$1\a" }
         ;;
    esac
fi
