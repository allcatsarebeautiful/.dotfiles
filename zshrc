source ~/.zsh/colors.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/history.zsh
source ~/.zsh/zsh_hooks.zsh

precmd() {
  if [[ -n "$TMUX" ]]; then
    tmux setenv "$(tmux display -p 'TMUX_PWD_#D')" "$PWD"
  fi
}


#TO DO
#   fix the colors script
#   if screen session exists, load it
#   keep ssh sessions alive!
#   add in the vim package
#   merge in the other zsh repo i downloaded
#   set up antigen and zsh bundles
#   

#Vim keybindings
bindkey -v
export KEYTIMEOUT=1
