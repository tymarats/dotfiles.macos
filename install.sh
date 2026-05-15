#!/bin/zsh

for i in .zshrc .vim .vimrc ; do
	cp -rf $i ~/
done

cd ~/

brew install nvm
brew install pure

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git .zsh-syntax-highlighting

