## Load various lib files
    antigen bundle robbyrussell/oh-my-zsh lib/

## Antigen Bundles
    antigen bundle allcatsarebeautiful/fasd
	antigen bundle allcatsarebeautiful/tmux-mem-cpu-load

    # antigen bundle djui/alias-tips
    antigen bundle mafredri/zsh-async
    antigen bundle rimraf/k
    #antigen bundle clvv/fasd
    antigen bundle unixorn/autoupdate-antigen.zshplugin
    antigen bundle yonchu/vimman
    antigen bundle zsh-users/zsh-syntax-highlighting
    antigen bundle zsh-users/zsh-history-substring-search
    antigen bundle zsh-users/zsh-completions
    antigen bundle zsh-users/zaw
#
    antigen bundle common-aliases
    #antigen bundle command-not-found #only for Ubuntu/opensuse
    antigen bundle git
    antigen bundle git-flow
    antigen bundle npm
    antigen bundle node
    antigen bundle screen
    #antigen bundle ssh-agent
    antigen bundle vi-mode
#
##Random Fun Bundles
    antigen bundle lol
    antigen bundle rand-quote
#
#
## OS specific plugins
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

# Antigen Theme
#    robbyrussel
#    agnoster
#    avit #would be nice with pwd and vim status
#    blinks
#!    mh
#    antigen theme norm
    antigen bundle sindresorhus/pure # requires mafredri/zsh-async
#    antigen theme pygmalion
#    ys
#    (not in oh-my-zsh)
#    xxf
#    antigen theme desyncr/zshrc themes/af-magic-mod
#    antigen theme Valodim/zsh-prompt-powerline
#    antigen theme nojhan/liquidprompt #or maybe bundle instead of them?
#    antigen theme caiogondim/bullet-train-oh-my-zsh-theme bullet-train #requires powerline fonts and ttf-ancient-fonts

#Fonts
#   larsenwork/monoid
#   belluzj/fantasque-sans
#   gabrielelana/awesome-terminal-fonts
#   powerline/fonts


antigen apply
