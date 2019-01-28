"--------------------------
" window
"--------------------------
set nocompatible
set t_Co=256
colorscheme hybrid
"colorscheme jellybeans
syntax on
filetype plugin indent on
au BufRead,BufNewFile *.wl  set filetype=wl

"sp in right side
set splitbelow

"vs in right side
set splitright

" show line number
" set number

" " show cursorline
" set cursorline
" set cursorcolumn

"--------------------------
" search Setting
"--------------------------
set ignorecase
set smartcase
set wrapscan
set hlsearch

"--------------------------
" key-bind
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
" file
"--------------------------
"don not make buckup file
set nobackup
"don not make swap file
set noswapfile

"--------------------------
" tab
"--------------------------
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

"tab swiching
nnoremap <S-Tab>   gt
nnoremap <C-S-Tab>   gT

"--------------------------
" indent
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
" setting clip board"
"--------------------------
set guioptions+=a
set clipboard+=autoselect,unnamed

"--------------------------
"auto-complete"
"-------------------------
"let g:neocomplcache_enable_at_startup = 1


"-------------------------
" Unit
" ------------------------
" 入力モードで開始する
let g:unite_enable_start_insert=1

" " バッファ一覧
noremap <C-N> :Unite buffer<CR>

" " ファイル一覧
noremap <C-P> :Unite -buffer-name=file file<CR>

" " 最近使ったファイルの一覧
" noremap <C-Z> :Unite file_mru<CR>

" " sourcesを「今開いているファイルのディレクトリ」とする
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>

" " ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')

" " ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')

" " ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>


""""""""""""""""""""""""""""""
" automatically complement (), {}, []
" """"""""""""""""""""""""""""""
"imap { {}<LEFT>
"imap [ []<LEFT>
"imap ( ()<LEFT>
" """"""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" コメントの自動補完無効
" """"""""""""""""""""""""""""""
autocmd FileType * setlocal formatoptions-=ro


""""""""""""""""""""""""""""""
" 全角スペースの表示
""""""""""""""""""""""""""""""
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme * call ZenkakuSpace()
        autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
    augroup END
    call ZenkakuSpace()
endif
""""""""""""""""""""""""""""""
