#-------------------------------------------------
# General Stteings
#-------------------------------------------------
export LANG=ja_JP.UTF-8
export TERM=xterm-256color

#alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
#alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'
alias emacs='$(brew --prefix emacs)/Emacs.app/Contents/MacOS/Emacs'

# command history search
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

setopt no_beep           # ビープ音を鳴らさないようにする
setopt auto_cd           # ディレクトリ名の入力のみで移動する
setopt auto_pushd        # cd時にディレクトリスタックにpushdする
setopt correct           # コマンドのスペルを訂正する
setopt magic_equal_subst # =以降も補完する(--prefix=/usrなど)
setopt prompt_subst      # プロンプト定義内で変数置換やコマンド置換を扱う
setopt notify            # バックグラウンドジョブの状態変化を即時報告する
setopt equals            # =commandを`which command`と同じ処理にする

### Complement ###
autoload -U compinit; compinit # 補完機能を有効にする
setopt auto_list               # 補完候補を一覧で表示する(d)
setopt auto_menu               # 補完キー連打で補完候補を順に表示する(d)
setopt list_packed             # 補完候補をできるだけ詰めて表示する
setopt list_types              # 補完候補にファイルの種類も表示する
bindkey "^[[Z" reverse-menu-complete  # Shift-Tabで補完候補を逆順する("\e[Z"でも動作する)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # 補完時に大文字小文字を区別しない

### Glob ###
setopt extended_glob # グロブ機能を拡張する
unsetopt caseglob    # ファイルグロブで大文字小文字を区別しない

### History ###
HISTFILE=~/.zsh_history   # ヒストリを保存するファイル
HISTSIZE=100000            # メモリに保存されるヒストリの件数
SAVEHIST=100000            # 保存されるヒストリの件数
setopt bang_hist          # !を使ったヒストリ展開を行う(d)
setopt extended_history   # ヒストリに実行時間も保存する
setopt hist_ignore_dups   # 直前と同じコマンドはヒストリに追加しない
setopt share_history      # 他のシェルのヒストリをリアルタイムで共有する
setopt hist_reduce_blanks # 余分なスペースを削除してヒストリに保存する

# すべてのヒストリを表示する
function history-all { history -E 1 }

# ------------------------------
# Look And Feel Settings
# ------------------------------
### Ls Color ###
# 色の設定
export LSCOLORS=Exfxcxdxbxegedabagacad
# 補完時の色の設定
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
# ZLS_COLORSとは？
export ZLS_COLORS=$LS_COLORS
# lsコマンド時、自動で色がつく(ls -Gのようなもの？)
export CLICOLOR=true
# 補完候補に色を付ける
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

### Prompt ###
# プロンプトに色を付ける
autoload -U colors; colors
# 一般ユーザ時
#tmp_prompt="%{${fg[cyan]}%}%n%# %{${reset_color}%}"
#tmp_prompt2="%{${fg[cyan]}%}%_> %{${reset_color}%}"
#tmp_rprompt="%{${fg[green]}%}[%~]%{${reset_color}%}"
#tmp_sprompt="%{${fg[yellow]}%}%r is correct? [Yes, No, Abort, Edit]:%{${reset_color}%}"

#PROMPT=$tmp_prompt    # 通常のプロンプト
#PROMPT2=$tmp_prompt2  # セカンダリのプロンプト(コマンドが2行以上の時に表示される)
#RPROMPT=$tmp_rprompt  # 右側のプロンプト
#SPROMPT=$tmp_sprompt  # スペル訂正用プロンプト

PROMPT='%F{10}%n:%F{12}%4(~,%-1~/.../%1~,%~)%f
%0(?.%#.%F{9}%#%f) '
#PROMPT='%F{10}%n@%m%f:%F{12}%4(~,%-1~/.../%1~,%~)%f
#%0(?.%#.%F{9}%#%f) '
RPROMPT='%*'
 
# SSHログイン時のプロンプト
[ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
  PROMPT="%{${fg[white]}%}${HOST%%.*} ${PROMPT}"
;

SSH_AGENT_FILE="$HOME/.ssh-agent-info"
test -f $SSH_AGENT_FILE && source $SSH_AGENT_FILE
if ! ssh-add -l >& /dev/null ; then
  ssh-agent > $SSH_AGENT_FILE
  source $SSH_AGENT_FILE
  ssh-add
fi

### Title (user@hostname) ###
case $TERM in
  xterm*)
    precmd() { echo -ne "\033]0;${USER}@${HOST%%.*}\007" }
  ;;
esac

#-------------------------------------------------
# Path
#-------------------------------------------------

# brew
export PATH=/usr/local/bin:$PATH

# nodejs
export NODE_PATH=/usr/local/lib/node_modules
NPM_PATH=/usr/local/bin/npm
export PATH=/usr/local/bin:~/bin:$NPM_PATH:$NODE_PATH:$PATH

# Python
if [ -e "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

# Ruby
if [ -e "$HOME/.rbenv" ]; then
  export PATH=$HOME/.rbenv/bin:$PATH
  eval "$(rbenv init - zsh)"
fi

# Java
export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8

# android
export PATH=$PATH:~/Library/Android/sdk/platform-tools

# dinghy
export DOCKER_HOST=tcp://192.168.99.100:2376
export DOCKER_CERT_PATH=$HOME/.docker/machine/machines/dinghy
export DOCKER_TLS_VERIFY=1
export DOCKER_MACHINE_NAME=dinghy

#-------------------------------------------------
# Other Setting
#-------------------------------------------------
### Aliases ###
# alias ls='ls -a'
alias finda='open .'
alias ll='ls -l'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias ..='cd ..'
alias ...='cd -'

# M-f, M-b
autoload -Uz select-word-style
select-word-style default
zstyle ':zle:*' word-chars '*?_-.[]~='

fpath=( ~/.home/zsh $fpath )
autoload -Uz tcsh-forward-word-match
zle -N forward-word tcsh-forward-word-match
