"---------------------------------------------------------------------------
"                   _
"           _   __ (_)____ ___   _____ _____
"          | | / // // __ `__ \ / ___// ___/
"          | |/ // // / / / / // /   / /__
"          |___//_//_/ /_/ /_//_/    \___/
"
"---------------------------------------------------------------------------
"---------------------------------------------------------------------------

"" -----*----- Base Settings -----*----- ""
set encoding=utf-8
scriptencoding utf-8
set fileencodings=utf-8,sjis,cp932,euc-jp
set fileformats=unix,dos,mac
set bomb
set binary
set ttyfast
set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set splitright
set splitbelow
set hidden
set virtualedit=onemore
set hlsearch
set incsearch
set ignorecase
set smartcase
set nobackup
set noswapfile
set helplang=ja,en
set ruler
set number
set ttimeoutlen=10
set gcr=a:blinkon0
set scrolloff=3
set laststatus=2
set modeline
set modelines=10
set wildmenu
set clipboard=unnamed
set title
set titleold="Terminal"
set titlestring=%F
set cursorline
set autoread
set noerrorbells visualbell t_vb=
set mouse=a
set whichwrap=h,l
filetype on
syntax on
highlight Pmenu ctermbg=233 ctermfg=241
highlight PmenuSel ctermbg=233 ctermfg=166
highlight Search ctermbg=166 ctermfg=233
highlight Visual ctermbg=166 ctermfg=233


"" -----*----- Indent Settings -----*----- ""
augroup fileTypeIndent
  autocmd!
  autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType eruby setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType json setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType javascriptreact setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType typescriptreact setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType vim setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType sh setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType markdown setlocal wrap
augroup END


"" -----*----- Shortcuts -----*----- ""
let mapleader="\<Space>"

""htkn to  arrow
nnoremap k k
nnoremap t j
nnoremap h h
nnoremap n l

vnoremap k k
vnoremap t j
vnoremap h h
vnoremap n l

"" 矢印キー
noremap <UP> <C-w>k
noremap <Down> <C-w>j
noremap <Left> <C-w>h
noremap <Right> <C-w>l

" バッファ移動
noremap ah :bp<CR>
noremap an :bn<CR>

" Gina
noremap ak :Gina diff<CR>
noremap at :Gina status<CR>

"" scroll
nnoremap ok <C-u>
nnoremap ot <C-d>

"" save
nnoremap <Leader>w :w<CR>
nnoremap <Leader>qq :q!<CR>
nnoremap <Leader>eee :e<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>nn :noh<CR>
nnoremap <Leader>y :%y<CR>
nnoremap <Leader>dd :%d<CR>

"" split
nnoremap <Leader>s :<C-u>split<CR>
nnoremap <Leader>v :<C-u>vsplit<CR>

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <Leader>t :tabnew<CR>

"" terminal
nnoremap <Leader>ter :vertical terminal<CR>

"" +(on \d) => increment
nnoremap + <C-a>

"" -(on \d) => decrement
nnoremap - <C-x>

"" move line/word
nnoremap N $
nnoremap H 0

"" search
nnoremap U n
nnoremap O N

"" code format
command! -nargs=0 Format :call CocAction('format')


"========================================="
" plugin Manager: dein.vim setting
"========================================="
" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.vim/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイル（後述）を用意しておく
  let g:rc_dir    = expand('~/.vim/dein/local')
  let s:toml      = g:rc_dir . '/plugins.toml'
  let s:lazy_toml = g:rc_dir . '/plugins_lazy.toml'

   " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

" 未インストールのプラグインをインストール
if dein#check_install()
  call dein#install()
endif