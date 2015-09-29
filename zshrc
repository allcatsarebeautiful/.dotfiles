#Load antigen.sh and then all of the bundles
source ~/.antigen/antigen.zsh
source ~/.zsh/antigen_settings.zsh
source ~/.aliases.local

#Load Base16 shell colors
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

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
#   keep ssh sessions alive!
#   set up gitflow
#   on creating a new window, call randquote
#   git submodule add powerline/fonts.git in the .fonts folder, then install.sh
