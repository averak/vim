"---------------------------------------------------------------------------
"
"           _   __ (_)____ ___   _____ _____
"          | | / // // __ `__ \ / ___// ___/
"          | |/ // // / / / / // /   / /__
"          |___//_//_/ /_/ /_//_/    \___/
"
"---------------------------------------------------------------------------
"---------------------------------------------------------------------------

let mapleader="\<Space>"

"" vimshell
nnoremap <Leader>ter :vertical terminal<CR>
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_prompt =  '$ '

"言語別にインデントを分ける"
augroup fileTypeIndent
  autocmd!
  autocmd FileType py setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd FileType rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType eruby setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType vim setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType go :highlight goErr cterm=bold ctermfg=214
  autocmd FileType go :match goErr /\<err\>/
  autocmd FileType markdown setlocal wrap
augroup END


"" -----*----- Shortcuts -----*----- ""
""htkn to  arrow
nnoremap k k
nnoremap t j
nnoremap h h
nnoremap n l

vnoremap k k
vnoremap t j
vnoremap h h
vnoremap n l

"" dein.vim
:command PlugUpdate call dein#update()
:command PlugInstall call dein#install()

"" twitter
:command Tpost PosttoTwitter
:command Tread FriendsTwitter
:command Tswitch SwitchLoginTwitter

"" delete white spaces
:command Ds FixWhitespace

"" 矢印キー
"noremap <Up> :NERDTree<CR>
"noremap <Down> :FriendsTwitter<CR>
"noremap <Left> :Gina diff<CR>
"noremap <Right> : Gina status<CR>

"" save
nnoremap <Leader>w :w<CR>
nnoremap <Leader>qq :q!<CR>
nnoremap <Leader>eee :e<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>nn :noh<CR>

"" split
nnoremap <Leader>s :<C-u>split<CR>
nnoremap <Leader>v :<C-u>vsplit<CR>

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <Leader>t :tabnew<CR>

"" Sft + y => yunk to EOL
nnoremap Y y$

"" +(on \d) => increment
nnoremap + <C-a>

"" -(on \d) => decrement
nnoremap - <C-x>

"" pbcopy for OSX copy/paste
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" move line/word
nmap <C-e> $
nmap <C-a> 0
nmap <C-f> W
nmap <C-b> B
imap <C-e> <C-o>$
imap <C-a> <C-o>0
imap <C-f> <C-o>W
imap <C-b> <C-o>B

"" -----*----- Base Settings -----*----- ""
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary
set ttyfast
set backspace=indent,eol,start
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set splitright
set splitbelow
set hidden
set hlsearch
set incsearch
set ignorecase
set smartcase
set nobackup
set noswapfile
set fileformats=unix,dos,mac
syntax on
set ruler
set number
set ttimeoutlen=10
set gcr=a:blinkon0
set scrolloff=3
set laststatus=2
set modeline
set modelines=10
set wildmenu
set clipboard=unnamed,autoselect
set title
set titleold="Terminal"
set titlestring=%F
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set autoread
set noerrorbells visualbell t_vb=
set mouse=a
"set whichwrap=b,s,<,>,[,]
set whichwrap=h,l
highlight Pmenu ctermbg=233 ctermfg=241
highlight PmenuSel ctermbg=233 ctermfg=166
highlight Search ctermbg=166 ctermfg=233
highlight Visual ctermbg=166 ctermfg=233


"----------------------------------------------------------
"  dein Scripts
"----------------------------------------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.vim/dein/repos/github.com/Shougo/dein.vim

" dein.vimが存在していない場合はgithubからclone
let s:dein_dir = expand('$HOME/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif


" Required:
if dein#load_state('$HOME/.vim/dein')
  call dein#begin('$HOME/.vim/dein')

  " プラグインリストを収めた TOML ファイル
  let s:toml_dir  = $HOME . '/.vim/dein/local'
  let s:toml      = s:toml_dir . '/plugins.toml'
  let s:lazy_toml = s:toml_dir . '/plugins_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" 不足プラグインの自動インストール
if dein#check_install()
  call dein#install()
endif