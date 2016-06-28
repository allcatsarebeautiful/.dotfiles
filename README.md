[dotbot]: https://github.com/anishathalye/dotbot
[zplug]: https://github.com/zplug/zplug
[vim-plug]: https://github.com/junegunn/vim-plug
[tpm]: https://github.com/tmux-plugins/tpm
[base16]: https://github.com/chriskempson/base16

THIS IS STILL AN ACTIVE WORK IN PROGRESS!


* Uses [Dotbot][dotbot] to manage dotfiles.
* Uses [zplug][zplug] to manage zsh plugins.
* Uses [vim-plug][vim-plug] to manage vim plugins.
* Uses [Tmux Plugin Manager][tpm] to manage tmux plugins.
* Uses [base16][base16] for coloscheme options and continuity between [vim-airline](https://github.com/vim-airline/vim-airline), my zsh prompt, and tmux.

Dotfiles
========

After cloning this repo, run `install` to set up the development environment. Note that the install script is idempotent: it can safely be run multiple times.

* Open Vim and type :PluginInstall to install plugins.
* Open Tmux and hit `+I to install Tmux plugins.

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

[Awesome Terminal Fonts](https://github.com/gabrielelana/awesome-terminal-fonts) should be installed, simply follow the directions at the bottom of the page.  Alternatively, try her patched fonts method perhaps, as it is explained [here](https://github.com/arialdomartini/oh-my-git#install-the-patched-font).


Other good font sources can be found [here](https://github.com/unixorn/awesome-zsh-plugins#fonts) on the [awesome-zsh-plugins](https://github.com/unixorn/awesome-zsh-plugins) page.


*For YouCompleteMe and Tern vim plugins, you must execute a few more steps; I don't have them enabled currently but eventually plan to.*
