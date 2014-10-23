"--------------------------
" Window Setting
"--------------------------
set nocompatible
set t_Co=256
"colorscheme wombat
colorscheme hybrid
syntax on
au BufRead,BufNewFile *.wl  set filetype=wl
" 新しいウィンドウを下に開く
set splitbelow
" 新しいウィンドウを右に開く
set splitright
"行数を表示
set number
"--------------------------
" Search Setting
"--------------------------
set ignorecase
set smartcase
set wrapscan
set hlsearch
"--------------------------
" Keyboard Setting
"--------------------------
"deleteキーを使えるようにする
set backspace=start,eol,indent
"--------------------------
" File system Setting
"--------------------------
"バックアップをとらない
set nobackup
"スワップファイルを保存しない
set noswapfile
"--------------------------
" Tab Setting
"--------------------------
"タブの間隔
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

"タブの移動
nnoremap <S-Tab>   gt
nnoremap <C-S-Tab>   gT
"--------------------------
" Indent Setting
"--------------------------
"autocmd FileType html :compiler tidy
"autocmd FileType html :setlocal makeprg=tidy\ -raw\ -quiet\ -errors\ --gnu-emacs\ yes\ \"%\"
set autoindent
set smartindent
"--------------------------
" Languege Setting
" -------------------------
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,iso-2022-jp
set fenc=utf-8
set enc=utf-8
" ツールバーを英語で表示
set fencs=utf-8,iso-2022-jp,euc-jp,cp932

"--------------------------
"setting clip board"
"--------------------------
set guioptions+=a
set clipboard+=autoselect,unnamed
"--------------------------
"補完プラグイン"
"-------------------------
"let g:neocomplcache_enable_at_startup = 1

"-------------------------
"Setting QuickRun
"-------------------------
set splitright "新しいウィンドウを右に開く

"-------------------------
