#!/bin/zsh

# default write settings
# ref. https://github.com/mathiasbynens/dotfiles/blob/master/.macos

# key repeat
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2

# disable iOS HotPlug
defaults write com.apple.ImageCapture disableHotPlug -bool NO

# dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock springboard-columns -int 7
defaults write com.apple.dock springboard-rows -int 7
defaults write com.apple.dock ResetLaunchPad -bool TRUE
defaults write com.apple.dock tilesize -int 55

# Bottom left screen corner →  Start screen saver
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0

# Enable `Tap to click`
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

killall Dock
killall Finder
