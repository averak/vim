if g:dein#_cache_version !=# 150 || g:dein#_init_runtimepath !=# '/Users/abetatsuya/.vim,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim82,/usr/local/share/vim/vimfiles/after,/Users/abetatsuya/.vim/after,/Users/abetatsuya/.vim/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/abetatsuya/.vim/vimrc', '/Users/abetatsuya/.vim/dein/local/plugins.toml', '/Users/abetatsuya/.vim/dein/local/plugins_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/abetatsuya/.vim/dein'
let g:dein#_runtime_path = '/Users/abetatsuya/.vim/dein/.cache/vimrc/.dein'
let g:dein#_cache_path = '/Users/abetatsuya/.vim/dein/.cache/vimrc'
let &runtimepath = '/Users/abetatsuya/.vim,/usr/local/share/vim/vimfiles,/Users/abetatsuya/.vim/dein/repos/github.com/junegunn/fzf,/Users/abetatsuya/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/abetatsuya/.vim/dein/.cache/vimrc/.dein,/usr/local/share/vim/vim82,/Users/abetatsuya/.vim/dein/.cache/vimrc/.dein/after,/usr/local/share/vim/vimfiles/after,/Users/abetatsuya/.vim/after'
filetype off
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
let g:airline#extensions#virtualenv#enabled = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
if exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif
nnoremap <silent> <C-p> :PrevimOpen<CR>
let g:vim_markdown_folding_disabled = 1
let g:previm_enable_realtime = 1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1
call gina#custom#command#option('status', '--opener', 'vsplit')
call gina#custom#command#option('diff', '--opener', 'vsplit')
let g:ale_lint_on_text_changed = 0
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:airline#extensions#ale#open_lnum_symbol = '('
let g:airline#extensions#ale#close_lnum_symbol = ')'
let g:ale_echo_msg_format = '[%linter%]%code: %%s'
highlight link ALEErrorSign Tag
highlight link ALEWarningSign StorageClass
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 30
let NERDTreeShowHidden=1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
autocmd BufWritePre * :FixWhitespace
let g:NERDTreeMapOpenInTab='d'
map <Leader>dir :NERDTreeToggle<CR>
syntax enable
colorscheme darktheme
map <Leader>go :QuickRun<CR>
let g:quickrun_config={'*': {'split': ''}}
