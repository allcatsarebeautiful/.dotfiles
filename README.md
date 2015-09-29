[dotbot]: https://github.com/anishathalye/dotbot
[antigen]: https://github.com/zsh-users/antigen
[vundle]: https://github.com/VundleVim/Vundle.vim
[tpm]: https://github.com/tmux-plugins/tpm
[base16]: https://github.com/chriskempson/base16

THIS IS STILL AN ACTIVE WORK IN PROGRESS!


* Uses [Dotbot][dotbot] to manage dotfiles.
* Uses [Antigen][antigen] to manage zsh plugins
* Uses [Vundle][vundle]to manage vim plugins
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

# Copy any (additional) fonts you may want to the ~/.dotfiles/fonts directory
* cd /tmp
* git clone http://github.com/gabrielelana/awesome-terminal-fonts
* cd awesome-terminal-fonts
* git checkout patching-strategy
* cp patched/*.ttf ~/.dotfiles/fonts
* sh ~/.dotfiles/install.sh

# update the font-info cache
* sudo fc-cache -fv ~/.fonts

In './config/10-symbols.conf' replace 'PragmataPro' with the name of your preferred font
Copy './config/10-symbols.conf'to '~/.config/fontconfig/conf.d' directory

Or  maybe?
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/


Or perhaps. . .
Install the fontconfig file. For newer versions of fontconfig the config path is ~/.config/fontconfig/conf.d/, for older versions it’s ~/.fonts.conf.d/:

mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

For YouCompleteMe and Tern vim plugins, you must execute a few more steps. . .ahalbert.nfshost.com/Tech/Installing_Tern_for_Vim.html
