#!/usr/bin/env bash

GITSOURCE=`git rev-parse --show-toplevel`;
cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

if [ "$1" != "--quick" ]; then
   /bin/bash install-apps.sh
fi;

function doIt() {
   cp "${GITSOURCE}"/gitconfig /etc/gitconfig
   cp "${GITSOURCE}"/tmux.conf /etc/tmux.conf

   cp "${GITSOURCE}"/.bash_profile ~/.bash_profile
   cp "${GITSOURCE}"/.bashrc ~/ ~/.bashrc
   cp "${GITSOURCE}"/.bash_git ~/.bash_git
   cp "${GITSOURCE}"/.bash_aliases ~/.bash_aliases
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
