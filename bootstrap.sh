#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

/bin/bash install-apps.sh

function doIt() {
   ln -sf gitconfig /etc/gitconfig
   ln -sf tmux.conf /etc/tmux.conf

   ln -sf .bash_profile ~/.bash_profile
   ln -sf .bashrc ~/ ~/.bashrc
   ln -sf .bash_git ~/.bash_git
   ln -sg .bash_aliases ~/.bash_aliases
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;


source ~/.bash_profile
/bin/bash configure-git.sh
