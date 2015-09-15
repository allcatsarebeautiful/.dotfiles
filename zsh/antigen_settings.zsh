#Set the base antigen repo to oh-my-zsh, because there's toooons of plugins there
    antigen use oh-my-zsh

# Load various lib files
    antigen bundle robbyrussell/oh-my-zsh lib/

# Antigen Bundles
    antigen bundle zsh-users/zsh-syntax-highlighting
    antigen bundle zsh-users/zsh-completions
    antigen bundle zsh-users/zaw
    antigen bundle yonchu/vimman
    antigen bundle unixorn/autoupdate-antigen.zshplugin
    antigen bundle djui/alias-tips
    antigen bundle autojump
    #antigen bundle common-aliases #if you want to use this, maybe delete aliases file?
    antigen bundle command-not-found #only for Ubuntu/opensuse
    antigen bundle git
    antigen bundle git-flow
    antigen bundle screen
    antigen bundle ssh-agent
    antigen bundle vi-mode
    
#Random Fun Bundles
    antigen bundle lol
    antigen bundle rand-quote


# OS specific plugins
if [[ $CURRENT_OS == 'OS X' ]]; then
    antigen bundle brew
    antigen bundle brew-cask
    antigen bundle gem
    antigen bundle osx
elif [[ $CURRENT_OS == 'Linux' ]]; then
    # None so far...

    if [[ $DISTRO == 'CentOS' ]]; then
        antigen bundle centos
    fi
elif [[ $CURRENT_OS == 'Cygwin' ]]; then
    antigen bundle cygwin
fi

#Fonts
#   larsenwork/monoid 
#   belluzj/fantasque-sans
#   gabrielelana/awesome-terminal-fonts
#   powerline/fonts

# Antigen Theme
#    robbyrussel
#    agnoster
#    avit #would be nice with pwd and vim status
#    blinks
#!    mh
#    antigen theme norm
    antigen theme pygmalion
#    ys
#    (not in oh-my-zsh)
#    xxf
#    caiogondim/bullet-train-oh-my-zsh-them


antigen apply
