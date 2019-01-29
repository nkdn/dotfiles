#!/bin/zsh

brew install openssl
brew install hub nkf fontconfig sl
brew install git-secrets terraform

# ruby
brew install rbenv ruby-build
source ~/.zshrc
rbenv install 2.3.0
rbenv global 2.3.0
rbenv rehash

# gem
gem install bundler
gem install cocoapods
gem install rubocop
source ~/.zshrc

# npm
brew install nodebrew yarn
source ~/.zshrc
mkdir -p ~/.nodebrew
mkdir -p ~/.nodebrew/src
nodebrew install-binary stable
nodebrew use stable

# python
brew install pyenv
source ~/.zshrc
CFLAGS="-I$(xcrun --show-sdk-path)/usr/include" pyenv install -v 2.7
pyenv global 2.7
pyenv rehash

# pip
pip install awscli
pip install docker-compose
source ~/.zshrc

# mac appstore
brew install mas
mas install 539883307 # LINE
mas install 409183694 # Keynote
mas install 497799835 # Xcode
