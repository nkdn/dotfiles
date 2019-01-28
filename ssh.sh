#!/bin/zsh

mkdir ~/.ssh
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/ssh/id_rsa ~/.ssh/id_rsa
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/ssh/id_rsa.pub ~/.ssh/id_rsa.pub
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/ssh/config ~/.ssh/config
chmod 600 ~/.ssh/id_rsa
