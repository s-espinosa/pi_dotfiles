# Pi Dotfiles

Dotfiles for a brand new Raspberry Pi.

First install Vim.

```sh
sudo apt-get install vim
```

Then clone this directory into the `Documents` directory and add the following line at the bottom of the existing `~/.bashrc`:

```sh
source "${HOME}/Documents/pi_dotfiles/.index"
```

In order to make the Vim plugins work, first install Vundle, then install the plugins.

```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/Documents/pi_dotfiles/.vim/bundle/Vundle.vim
$ vim +PluginInstall +qall
```

