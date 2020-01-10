#!/bin/zsh

for i in .zshrc .vim .vimrc ; do
	cp -rf $i ~/
done

cd ~/

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
nvm install 10
nvm use 10
npm install -g pure-prompt
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git .zsh-syntax-highlighting

