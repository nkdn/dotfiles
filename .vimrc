"--------------------------
" Window Setting
"--------------------------
set nocompatible
set t_Co=256
colorscheme hybrid
"colorscheme jellybeans
syntax on
au BufRead,BufNewFile *.wl  set filetype=wl

"sp in right side
set splitbelow

"vs in right side
set splitright

" show line number
set number

" show cursorline
set cursorline
set cursorcolumn

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
set backspace=start,eol,indent

"emacs-like key bind
imap <silent> <C-P> <Up>
imap <silent> <C-N> <Down>
imap <silent> <C-B> <Left>
imap <silent> <C-F> <Right>
imap <silent> <C-A> <Home>
imap <silent> <C-E> <End>
imap <silent> <C-D> <Del>
imap <silent> <C-K> <C-O>
imap <silent> <C-Y> <C-R>

"--------------------------
" File system Setting
"--------------------------
"don not make buckup file
set nobackup
"don not make swap file
set noswapfile

"--------------------------
" Tab Setting
"--------------------------
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

"tab swiching
nnoremap <S-Tab>   gt
nnoremap <C-S-Tab>   gT

"--------------------------
" Indent Setting
"--------------------------
"autocmd FileType html :compiler tidy
"autocmd FileType html :setlocal makeprg=tidy\ -raw\ -quiet\ -errors\ --gnu-emacs\ yes\ \"%\"
"set autoindent
"set smartindent

"--------------------------
" Languege Setting
" -------------------------
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,iso-2022-jp
set fenc=utf-8
set enc=utf-8
"tool bar in English
set fencs=utf-8,iso-2022-jp,euc-jp,cp932

"--------------------------
"setting clip board"
"--------------------------
set guioptions+=a
set clipboard+=autoselect,unnamed

"--------------------------
"auto-complete"
"-------------------------
"let g:neocomplcache_enable_at_startup = 1



