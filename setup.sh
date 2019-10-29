#!/bin/bash

cp -f ./gitconfig ~/.gitconfig

# After running, run :source in a vim terminal
ln -s ./vimrc ~/.vimrc

# install wget
brew install wget

# install python
brew install python
sudo easy_install pip

# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo Done
