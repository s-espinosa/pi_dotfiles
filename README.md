# Pi Dotfiles

Dotfiles for a brand new Raspberry Pi.

To install clone into the `Documents` directory, then add the following line at the bottom of the existing `~/.bashrc`:

```sh
source "${HOME}/Documents/pi_dotfiles/.index"
```

In order to make the Vim plugins work, first install Vundle, then install the plugins.

```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/Documents/pi_dotfiles/.vim/bundle/Vundle.vim
$ vim +PluginInstall +qall
```

