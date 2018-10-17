#!/bin/bash

cp .vimrc ~
cp .bashrc ~

grep ".bashrc" ~/.bash_profile 2>&1 >>/dev/null
if [ "$?" -eq "0" ]; then
	exit 0;
fi

cat <<EOF > ~/.bash_profile
 	if [ -r ~/.bashrc ]; then
 	   source ~/.bashrc
 	fi
EOF
