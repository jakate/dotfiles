set nocompatible

"fix vundle
set shell=/bin/bash

" Enable filetypes
filetype plugin on
filetype indent on
syntax on

"JSHint
let jshint2_command = '~/.jshintrc'

" leader key
let mapleader=","

"Display current cursor position on lower right corner
set ruler

"allow switching buffer without save
set hidden

"Makes the cursor stay certicall center of the screen
set so=999

"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"Set tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2

"Tabs to spaces
set expandtab

"Show command
set showcmd

"Indent
set smartindent
set autoindent

"Show line numbers
set number

"No highlight on search results
set nohlsearch


"Show trailing whitespace...
match ErrorMsg '\s\+$'

"...and remove them
autocmd BufWritePre * :%s/\s\+$//e

"Add end of the file line break
function! AddLastLine()
    if getline('$') !~ "^$"
        call append(line('$'), '')
    endif
endfunction

autocmd BufWritePre * call AddLastLine()


"For autocompleting
set wildmode=list:longest

"Always show the status line
set laststatus=2

set linespace=1

"more natural split
set splitbelow
set splitright

"space to start command :
nmap <space> :

"set dircetory to current files dir
autocmd BufEnter * cd %:p:h

"Scrub buffer <prev next>
nnoremap <silent> <c-l> :bn<CR>
nnoremap <silent> <c-h> :bp<CR>

"Shortcut for editing vimrc file in a new tab
nmap ,ev :tabedit $MYVIMRC<cr>

"Autoloadvimrc on change
augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

" Airline modifications
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline_powerline_fonts=1

"GitGutter
highlight clear SignColumn
let g:gitgutter_enabled = 1
let g:gitgutter_realtime = 0
"let g:gitgutter_eager = 0
"let g:gitgutter_enabled = 0
"let g:gitgutter_signs = 0

"Set correct syntax highlighting
au BufNewFile,BufRead *.{styl,less,css} set filetype=css

"neocomplcache stuff

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
hi Pmenu ctermbg=blue
hi PmenuSel ctermbg=1
hi PmenuSbar ctermbg=0

"cursorline
"Enable CursorLine
set cursorline

" Default Colors for CursorLine
"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white
hi CursorLine cterm=NONE ctermbg=black ctermfg=NONE

"Visual bell
set noerrorbells visualbell t_vb=
"autocmd GUIEnter * set visualbell t_vb=

" Keep selection on indent
vnoremap < <gv
vnoremap > >gv

