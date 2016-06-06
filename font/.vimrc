set nocompatible
filetype off

set shell=/bin/bash

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'Raimondi/delimitMate'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

call vundle#end()

filetype plugin indent on

let mapleader = ","
let g:mapleader= ","
syntax on

" 自动加载vimrc
" autocmd bufwritepost .vimrc source $MYVIMRC
" 快捷键
map H ^
map L $
map <c-j> :m . +1<cr>
map <c-k> :m . -2<cr>
map <leader>w :w<cr>
map ; :
imap jk <Esc>
imap kj <Esc>


" 映射tab为切换window
nnoremap <tab> <c-w>w
" NERDTree 

map <leader>f :NERDTreeToggle<cr>
let NERDTreeShowLineNumbers=1
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1

" airline
silent! colorscheme solarized  
set laststatus=2 
set encoding=utf-8
let g:Powerline_symbols='fancy'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline_theme='wombat'

" easymotion
let g:EasyMotion_smartcase = 1
nnoremap <leader>. <Plug>(easymotion-repeat)
map <leader>h <Plug>(easymotion-linebackward)
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)
map <leader>l <Plug>(easymotion-lineforward)
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)
map <space> /
map U <C-r>

" tab
nnoremap <silent><leader>n :tabnext<cr>
nnoremap <silent><leader>p :tabprev<cr>
nnoremap <leader>q :q<cr>

" unite
nnoremap [unite] <Nop>
nmap <leader>u [unite]
nnoremap <silent> [unite]f :<C-u>Unite
      \ -start-insert file_rec/async<CR>
nnoremap <silent> [unite]r <Plug>(unite_redraw)
nnoremap <silent> [unite]g :Unite grep:.<CR>

call unite#custom#profile('files', 'context.smartcase', 1)
call unite#custom#profile('files', 'context.ignorecase', 1)
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom_source('file_rec,file_rec/async', 'matchers',
            \ ['converter_relative_word', 'matcher_default'])
call unite#custom_source('file_rec,file_rec/async', 'converters',
            \ 'converter_relative_abbr')
call unite#custom_source('file_rec,file_rec/async', 'sorters', ['sorter_rank', 'sorter_selecta'])

if executable('ag')
    let g:unite_source_grep_default_opts='--nocolor --nogroup'
    let g:unite_source_grep_recursive_opt=''
    let g:unite_source_grep_encoding = 'utf-8'
    let g:unite_source_rec_async_command=['ag', '--nocolor', '--nogroup', '-g', '']
    let g:unite_source_grep_command='ag'
endif

" jsx syntax support 
let g:jsx_ext_required = 0
let g:jsx_pragma_required = 1
let g:javascript_enable_domhtmlcss=1
let g:javascript_ignore_javaScriptdoc=1
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"



set number
set hlsearch
set smartindent
set autoindent
set expandtab
set backspace=eol,start,indent
set wildmenu
set scrolloff=7
set smartcase
set ignorecase
set noswapfile
set nobackup
set nowb
set tabstop=2
set softtabstop=2
set shiftwidth=2
set nowrap

nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j
