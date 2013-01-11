" VIM main configuration file

"============= Built-in settings =============

" Basic {
    set nocompatible
    set visualbell          " no beep
    set history=100

    " let mapleader=","

    execute pathogen#infect()
" }

" Indentation/Tab {
    set autoindent
    set expandtab           " insert tabs as spaces
    set shiftwidth=4        " set shift width or the size of an indentation.
    set tabstop=4
    set softtabstop=4

    " disable auto indentation
    nn <Leader>I :setl noai nocin nosi inde=<CR>

    " in front of a line inserts blanks according to 'shiftwidth', a <BS>
    " will delete a 'shiftwidth' worth of space at the start of the line.
    set smarttab

    filetype plugin indent on
" }

" Edit {
    set showmode
    set linebreak           " avoid wrapping a word
    set showmatch           " show parentheses matching
    set ambiwidth=double

    " Encoding {
        set encoding=utf-8
        set fileencoding=utf-8
        set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312
    " }
" }

" File {
    set autoread            " automatically read outside change
    set hidden              " hide buffer instead of closing
" }

" Search {
    set hlsearch            " highlight the target of a search.
    set incsearch           " incremental search
    set ignorecase          " Ignore case when search
    set smartcase
    set nowrapscan          " No wrap scan when search

    " toggle case ignore
    nmap <Leader>C :set ignorecase! ignorecase?<CR>

    " toggle search highlighting
    " nmap <silent> <Leader>/ :set hls!<bar>set hls?<CR>
    nmap <F2> :nohlsearch<CR>
" }

" Cursor {
    " set cursorline          " highlight current line
    " set cursorcolumn
    hi CursorLine   cterm=NONE ctermbg=blue ctermfg=white guibg=darkred guifg=white
    hi CursorColumn cterm=NONE ctermbg=blue ctermfg=white guibg=darkred guifg=white
    nnoremap <Leader>hc :set cursorline! cursorcolumn!<CR>

    set mousehide           " hide mouse when typing
" }

" GUI {
    syntax on

    if has('mouse')
        set mouse=a
    endif

    set showcmd             " display incomplete commands
    set ruler               " show the cursor position all the time
    set nu
    set nowrap
    set laststatus=2        " show the status line
    set showtabline=2       " always show tab line
    set title
" }

nmap \p i(<Esc>ea)<Esc>
nmap \c i{<Esc>ea}<Esc>

" automatically removing all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e


"============= Plugin settings =============

nnoremap <silent> <F8> :TlistToggle<CR>

" NerdTree {
    " open a NERDTree automatically when vim starts up if no files were specified
    autocmd vimenter * if !argc() | NERDTree | endif
    map <C-E> :NERDTreeToggle<CR>
" }

" Powerline {
    set guifont=PowerlineSymbols\ for\ Powerline
    set nocompatible
    set t_Co=256
    " let g:Powerline_symbols = 'fancy'
" }

