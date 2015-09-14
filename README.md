Shamelessly adpated from ze-best-zsh-config while moving away from oh-my-zsh

Uses [dotbot]: https://github.com/anishathalye/dotbot to manage dotfiles.
Uses [antigen]: https://github.com/zsh-users/antigen to manage zsh plugins
Uses [vundle]: https://github.com/VundleVim/Vundle.vim to manage vim plugins

Dotfiles
========

After cloning this repo, run `install` to automatically set up the development
environment. Note that the install script is idempotent: it can safely be run
multiple times.

Dotfiles uses [Dotbot][dotbot] for installation.

Making Local Customizations
---------------------------

You can make local customizations for some programs by editing these files:

* `vim` : `~/.vimrc_local`
* `zsh` : `~/.zshrc_local_before` run before `.zshrc`
* `zsh` : `~/.zshrc_local_after` run after `.zshrc`
* `git` : `~/.gitconfig_local`
* `tmux` : `~/.tmux_local.conf`

Fonts
========

This terminal setup needs powerline fonts
