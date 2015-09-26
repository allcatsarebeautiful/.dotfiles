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
