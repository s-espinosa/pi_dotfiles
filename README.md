# Pi Dotfiles

Dotfiles for a brand new Raspberry Pi.

First install Vim.

```sh
sudo apt-get install vim
cd ~/Documents
git clone https://github.com/s-espinosa/pi_dotfiles.git
```

Add the following line at the bottom of the existing `~/.bashrc`:

```sh
source "${HOME}/Documents/pi_dotfiles/.index"
```

In order to actually apply the information from the dotfiles and make the Vim plugins work, first install Vundle, then install the plugins.

```
source ~/.bashrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/Documents/pi_dotfiles/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```

