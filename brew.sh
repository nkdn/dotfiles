#!/bin/zsh

brew install openssl
brew install hub nkf fontconfig sl
brew install git-secrets terraform

# ruby
brew install rbenv ruby-build
rbenv install 2.3.0
rbenv global 2.3.0
rbenv rehash

# # gem
# gem install rubocop
# gem install cocoapods

# npm
brew install nodebrew yarn
mkdir -p ~/.nodebrew
mkdir -p ~/.nodebrew/src
nodebrew install-binary stable
nodebrew use stable

# python
brew install pyenv
CFLAGS="-I$(xcrun --show-sdk-path)/usr/include" pyenv install -v 2.7
pyenv global 2.7
pyenv rehash

# pip
pip install awscli
pip install docker-compose

# java
brew tap caskroom/versions
