[dotbot]: https://github.com/anishathalye/dotbot
[antigen]: https://github.com/zsh-users/antigen
[vundle]: https://github.com/VundleVim/Vundle.vim
[tpm]: https://github.com/tmux-plugins/tpm
[base16]: https://github.com/chriskempson/base16

THIS IS STILL AN ACTIVE WORK IN PROGRESS!


* Uses [Dotbot][dotbot] to manage dotfiles.
* Uses [Antigen][antigen] to manage zsh plugins
* Uses [Vundle][vundle] to manage vim plugins
* Uses [Tmux Plugin Manager][tpm] to manage tmux plugins<F24><F25>
* Uses [base16][base16] for coloscheme options and continuity between [vim-airline](https://github.com/bling/vim-airline), my zsh prompt, and tmux.

Dotfiles
========

After cloning this repo, run `install` to automatically set up the development
environment. Note that the install script is idempotent: it can safely be run
multiple times.


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

[Awesome Terminal Fonts][https://github.com/gabrielelan/awesome-terminal-fonts] should be installed, simply follow the directions at the bottom of the page.  Alternatively, try her patched fonts method perhaps, as it is explained [here][https://github.com/arialdomartini/oh-my-git#install-the-patched-font].


Other good font sources can be found [here][https://github.com/unixorn/awesome-zsh-plugins#fonts] on the [awesome-zsh-plugins][https://github.com/unixorn/awesome-zsh-plugins] page.


# For YouCompleteMe and Tern vim plugins, you must execute a few more steps; I don't have them enable currently but eventually plan to.
