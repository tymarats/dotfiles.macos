#!/bin/zsh

for i in .zshrc .gitignore .vim .vimrc .sleep ; do
	cp -rf ~/$i . 
done

