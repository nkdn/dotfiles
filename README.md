## setup macOS

### switch to zsh

```bash
which -a zsh
chsh -s /bin/zsh
source ~/.zshrc
```

### xcode-select

```bash
xcode-select --install
```

### install homebrew

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
```

### git clone

```bash
git clone https://github.com/nkdn/dotfiles.git ~/.dotfiles
```

### git

```bash
chmod 755 ~/.dotfiles/git.sh
~/.dotfiles/git.sh
```

### .zshrc & .vimrc

```bash
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.vim ~/.vim
source ~/.zshrc
```

### macOS defaults

```bash
chmod 755 ~/.dotfiles/macos.sh
~/.dotfiles/macos.sh
```

### karabiner-elements

required sudo

```bash
brew cask install karabiner-elements
mkdir -p ~/.config/karabiner
cp ~/.dotfiles/karabiner/karabiner.json ~/.config/karabiner/karabiner.json
```

### brew cask

```bash
chmod 755 ~/.dotfiles/brew-cask.sh
~/.dotfiles/brew-cask.sh
```

### brew

```bash
chmod 755 ~/.dotfiles/brew.sh
~/.dotfiles/brew.sh
```

### docker

required kernel extension permission

```bash
brew cask install docker-toolbox
```

dinghy install is depended on docker-toolbox's installation

```bash
brew tap codekitchen/dinghy
brew install dinghy
dinghy create --provider virtualbox --disk 40000 --memory 4000 --cpus 2
```
