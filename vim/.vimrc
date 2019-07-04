"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This is the personal vim config used by stdrickforce.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable vundle
set rtp+=~/.vim/bundle/Vundle.vim/

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Enable plugins
Plugin 'Chiel92/vim-autoformat'
Plugin 'SirVer/ultisnips'
Plugin 'StanAngeloff/php.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'beanworks/vim-phpfmt'
Plugin 'derekwyatt/vim-scala'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'ervandew/supertab'
Plugin 'fatih/vim-go'
Plugin 'gf3/peg.vim'
Plugin 'godlygeek/tabular'
Plugin 'isRuslan/vim-es6'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'solarnz/thrift.vim'
Plugin 'tobyS/pdv'
Plugin 'tobyS/vmustache'
Plugin 'tpope/vim-fugitive'
Plugin 'uarun/vim-protobuf'
Plugin 'vim-scripts/nginx.vim'
Plugin 'vim-scripts/taglist.vim'

" Color Schemes
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Environment
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basics
set nocompatible               " must be first line
set background=dark            " Assume a dark background

syntax on                      " syntax highlighting
filetype plugin indent on      " Automatically detect file types.

" General
set fencs=utf-8,gb2312,gbk     " Sets the default encoding
set autochdir                  " always switch to the current file directory.

set nospell                    " spell checking off
set shortmess+=filmnrxoOtT     " abbrev. of messages (avoids 'hit enter')
set virtualedit=onemore        " allow for cursor beyond last character
set history=1000               " Store a ton of history (default is 20)

set noswapfile
set backup                     " backups are nice ...
set backupdir=~/.vim/backup
set undofile                   " persistent undo
set undolevels=1000            " maximum number of changes that can be undone
set undoreload=10000           " maximum number lines to save for undo on a buffer reload
set undodir=~/.vim/undo
set foldlevel=2

" auto save/load foldlevel
" au BufWinLeave * silent mkview
" au BufWinEnter * silent loadview

" Reload vimrc when it is edited.
" au! BufWritePost ~/.vimrc source ~/.vimrc

" set clipboard
set clipboard+=unnamed


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if filereadable(expand("~/.vim/bundle/vim-colors-solarized/colors/solarized.vim"))
    color solarized                    " load a colorscheme
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
endif
set term=builtin_xterm         " Make terminal stuff works
set t_Co=256

set tabpagemax=15             " only show 15 tabs
set showmode                  " display the current mode

set cursorline                " highlight current line

if has('cmdline_info')
    set ruler                      " show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
    set showcmd                    " show partial commands in status line and selected characters/lines in visual mode
endif

set laststatus=2
set backspace=indent,eol,start " Backspace for dummys
set linespace=0                " No extra spaces between rows
set nu                         " Line numbers on
set showmatch                  " Show matching brackets/parenthesis
set incsearch                  " Find as you type search
set hlsearch                   " Highlight search terms
set winminheight=0             " Windows can be 0 line high
set ignorecase                 " Case insensitive search
set smartcase                  " Case sensitive when uc present
set wildmenu                   " Show list instead of just completing
set wildmode=list:longest,full " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]  " Backspace and cursor keys wrap to
set scrolljump=5               " Lines to scroll when cursor leaves screen
set scrolloff=3                " Minimum lines to keep above and below cursor
set gdefault                   " The /g flag on :s substitutions by default
set hidden                     " Change buffer - without saving
set magic                      " Set magic on, for regular expressions
set autoread                   " Auto reload file on change
set list
set listchars=tab:>\ ,trail:\ ,extends:#,nbsp:\  " Highlight problematic whitespace
set cc=100


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Formatting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wrap            " wrap long lines
set linebreak       " set linebreak
set textwidth=0     " sets the text width
set autoindent      " Auto indent
set smartindent     " Smart indet
set expandtab       " tabs are spaces, not tabs
set smarttab        " Smart tab
set shiftwidth=4    " use indents of 4 spaces
set tabstop=4       " an indentation every four columns
set softtabstop=4   " let backspace delete indent

" Remove trailing whitespaces and ^M chars
autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"The default leader is '\', but many people prefer ',' as it's in a standard
"location
let mapleader = ','

" Making it so ; works like : for commands. Saves typing and eliminates :W style typos due to lazy holding shift.
nnoremap ; :

" Remap VIM ^/$
map 0 ^
map - $

inoremap jk <Esc>

" Paste mode toggle
nnoremap <leader>pp :setlocal paste!<cr>

" Use the arrows to something usefull
nnoremap <right> :bn!<cr>
nnoremap <left> :bp!<cr>

" Tab
noremap gt :tabnew<space>
noremap gj :tabprevious<cr>
noremap gk :tabnext<cr>
noremap gw :tabclose<cr>

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Close the current buffer
map <leader>d :Bclose<cr>

" Close all the buffers
map <leader>D :1,300 bd<cr>:q<cr>

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" Code folding options
nmap f0 :set foldlevel=0<CR>
nmap f1 :set foldlevel=1<CR>
nmap f2 :set foldlevel=2<CR>
nmap f3 :set foldlevel=3<CR>
nmap f4 :set foldlevel=4<CR>
nmap f5 :set foldlevel=5<CR>
nmap f6 :set foldlevel=6<CR>
nmap f7 :set foldlevel=7<CR>
nmap f8 :set foldlevel=8<CR>
nmap f9 :set foldlevel=9<CR>

nmap <space> za
" nmap <C-k> zr
" nmap <C-j> zm

" Jump to next/previous word
nmap <C-h> b
nmap <C-l> w

" clearing highlighted search
nmap <silent> <leader>/ :nohlsearch<CR>

" Fast sort selected area.
vmap <leader>s :sort<CR>

" Shortcuts
" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

" Fix home and end keybindings for screen, particularly on mac
" - for some reason this fixes the arrow keys too. huh.
map  [F $
imap [F $
map  [H g0
imap [H g0

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

" Save and return to normal mode on FocusLost
au FocusLost * :silent! wall                 " Save on FocusLost
au FocusLost * call feedkeys("\<C-\>\<C-n>") " Return to normal mode on FocustLost

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Misc
    let g:NERDShutUp=1
    let b:match_ignorecase = 1

" Ctags
    set tags=./tags;/,~/.vimtags

" NerdTree
    map <C-n> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
    map <leader>e :NERDTreeFind<CR>
    nmap <leader>nt :NERDTreeFind<CR>

    let NERDTreeShowBookmarks=1
    let NERDTreeIgnore=[
                \ '\.pyc',
                \ '\.swo$',
                \ '\.swp$',
                \ '\.git',
                \ '\.svn',
                \ '\.bzr',
                \ '\.DS_Store'
                \ ]
    let NERDTreeChDirMode=2
    let NERDTreeQuitOnOpen=1
    let NERDTreeShowHidden=1
    let NERDTreeKeepTreeInNewTab=1

" Taglist
  map <C-t> :TlistToggle<CR>

" Ctrlp
    let g:ctrlp_working_path_mode = 'rc'
    nnoremap <C-o> :CtrlPBuffer<CR>
    nnoremap <C-m> :CtrlPMRU<CR>
    nnoremap <C-e> :CtrlPClearCache<CR>
    let g:ctrlp_custom_ignore = {
        \ 'dir':  '\.git$\|\.hg$\|\.svn$\|build$',
        \ 'file': '\.exe$\|\.so$\|\.dll$\|\.DS_Store$\|\.pyc$'
        \ }

" Tagbar
    nnoremap <silent> <leader>t :TagbarToggle<CR>

" Fugitive
    nnoremap <silent> <leader>gs :Gstatus<CR>
    nnoremap <silent> <leader>gd :Gdiff<CR>
    nnoremap <silent> <leader>gc :Gcommit<CR>
    nnoremap <silent> <leader>gb :Gblame<CR>
    nnoremap <silent> <leader>gl :Glog<CR>

" Gutter
    let g:gitgutter_enabled = 0

    nnoremap <silent> <leader>g] :GitGutterNextHunk<CR>
    nnoremap <silent> <leader>g[ :GitGutterPrevHunk<CR>
    nnoremap <silent> <leader>gu :GitGutterUndoHunk<CR>
    nnoremap <silent> <leader>gp :GitGutterPreviewHunk<CR>
    nnoremap <silent> <leader>gg :GitGutterToggle<CR>
    nnoremap <silent> <leader>gh :GitGutterLineHighlightsToggle<CR>

" YouCompleteMe

    let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
    let g:ycm_confirm_extra_conf = 0

    " nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
    " nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
    nnoremap <leader>gt :YcmCompleter GoToDefinitionElseDeclaration<CR>

    cmap ycd :YcmDiags<CR>

" Syntastic

    let g:syntastic_auto_jump=1
    let g:syntastic_check_on_open=1
    let g:syntastic_ignore_files = [".*\.html$"]

    " let g:syntastic_c_compiler = 'gcc'
    " let g:syntastic_c_compiler_options = '
    "     \ -std=c++11 -stdlib=libc++
    "     \ -I/usr/local/Cellar/php70/7.0.20_12/include/php/
    "     \ -I/usr/local/Cellar/php70/7.0.20_12/include/php/main/
    "     \ -I/usr/local/Cellar/php70/7.0.20_12/include/php/Zend/
    "     \ -I/usr/local/Cellar/php70/7.0.20_12/include/php/TSRM/
    " \'

    " cpp
    " let g:syntastic_cpp_compiler = 'g++'
    " let g:syntastic_cpp_compiler_options = '
    "     \ -std=c++11 -stdlib=libc++
    " \'

    " python
    let g:syntastic_python_checkers = ['flake8']
    let g:syntastic_python_flake8_args = '--ignore=F404,E501'

    " php
    let g:syntastic_php_checkers = ['php', 'phpmd']
    let g:syntastic_php_phpcs_args = "--standard=PSR2"
    let g:syntastic_php_phpmd_post_args = "xml /Users/stdrickforce/.vim/syntastic/phpmd.xml"

    " javascript
    let g:syntastic_javascript_checkers = ['eslint']

    " golang
    let g:syntastic_go_checkers = ['go']

    " yaml
    let g:syntastic_yaml_checkers = ['yamllint']
    let g:syntastic_yaml_yamllint_args = "-d relaxed"

    au Filetype yaml let g:syntastic_quiet_messages={'level':'warnings'}

" Powerline
    let g:Powerline_symbols = 'fancy'
    python3 from powerline.vim import setup as powerline_setup
    python3 powerline_setup()
    python3 del powerline_setup


" vim-go
    let g:go_fmt_command = "goimports"

" vim-phpfmt
    let g:phpfmt_standard = 'PSR2'

" vim-autoformat
    let g:formatter_yapf_style = "facebook"

    let g:formatdef_astyle_cpp = '"astyle -A14 -s2 -p -xC80 -f"'
    let g:formatters_c = ["astyle_cpp"]
    let g:formatters_cpp = ["astyle_cpp"]

    let g:formatdef_python = ["autopep8"]

    au BufWritePre *.py :Autoformat
    au BufWritePre *.h :Autoformat
    au BufWritePre *.c :Autoformat
    au BufWritePre *.cc :Autoformat
    au BufWritePre *.cpp :Autoformat

" vim-cpp-enhanced-highlight
    let g:cpp_class_scope_highlight = 1

" pdv
    let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
    nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Languages
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Filetypes.
    autocmd BufRead,BufNewFile *.less set filetype=less
    autocmd BufRead,BufNewFile *.jedi set filetype=jedi
    autocmd BufRead,BufNewFile *.thrift set filetype=thrift
    autocmd BufRead,BufNewFile *.json set filetype=json
    autocmd BufRead,BufNewFile *.l set filetype=lex
    autocmd BufRead,BufNewFile *.df set filetype=dockerfile
    autocmd BufRead,BufNewFile *.dcf set filetype=dockerfile
    autocmd BufRead,BufNewFile *.h set filetype=cpp
    autocmd BufRead,BufNewFile *.zsh set filetype=sh
    autocmd BufRead,BufNewFile *.zsh-theme set filetype=sh

" Nginx Filetypes.
    autocmd BufRead,BufNewFile /etc/nginx/* set filetype=nginx
    autocmd BufRead,BufNewFile /usr/local/etc/nginx/* set filetype=nginx
    autocmd BufRead,BufNewFile nginx.conf set filetype=nginx

" K8s.
    autocmd BufRead,BufNewFile /Users/stdrickforce/.kube/config set filetype=yaml

" Indent
    au Filetype python setlocal shiftwidth=4 tabstop=4 softtabstop=4
    au Filetype python setlocal cc=80
    au Filetype cpp set shiftwidth=2 tabstop=2 softtabstop=2
    au Filetype yacc set shiftwidth=2 tabstop=2 softtabstop=2
    au Filetype yaml set shiftwidth=2 tabstop=2 softtabstop=2

" Foldlevel
    au Filetype yaml set foldlevel=9


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Funtion define
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" python fold
set foldmethod=indent

" Golang
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Auto add .py header.
function! PyHeader()

    let n = 1
    while n < 3
        let line = getline(n)
        if line =~ '\S*coding\S*'
            return
        endif
        let n = n + 1
    endwhile

    call append(0, '#!/usr/bin/env python')
    call append(1, '# -*- coding: utf-8 -*-')
    call append(2, '')
    call append(3, '# Author: stdrickforce (Tengyuan Fan)')
    call append(4, '# Email: <stdrickforce@gmail.com>')
    call append(5, '')
    echohl WarningMsg | echo "Successful in adding the header." | echohl None
endf

" Auto add header for php files.
" Just for Haojing
function! PhpHeader()
  let line = getline(1)
  if !(line =~ '\<\?php')
    call append(0, '<?php')
  endif

  let line = getline(2)
  if !(line =~ '\/[\/\*]S*')
    call append(1, '// fantengyuan@baixing.com')
  endif
endf

" Haojing fixes.
let phpcs_hj = "--standard=/Users/stdrickforce/workspace/baixing/haojing/phpcs_ruleset.xml"
au bufnewfile,bufread */haojing*/*.php setlocal noexpandtab nolist
au bufnewfile,bufread */haojing*/*.php let g:phpfmt_options = phpcs_hj
au bufnewfile,bufread */haojing/*.php call PhpHeader()

" python header.
au bufnewfile,bufread *.py call PyHeader()

" Compile & Run .cpp file.
function! Compile()
    exec "w"
    exec "cclose"
    if &filetype == 'cpp'
        set makeprg=g++\ -std=c++11\ -D__TEST__\ -o\ %<\ %
    elseif &filetype == 'c'
        set makeprg=gcc\ -std=c99\ -D__TEST__\ -o\ %<\ %
    endif
    silent make
    exec "normal :"

    let myfile=expand("%:r")
    if filereadable(myfile)
        execute "! ./%< && rm ./%<"
    else
        cope5
    endif
endf

" Compile & Run .java file.
function! CompileJava()
    exec "w"
    silent exec "!javac %"
    exec "!java %<"
endf

" Compile & Run .lex file.
function! CompileFlex()
    exec "w"
    silent exec "!flex -o l.c %"
    silent exec "!gcc -o fl l.c -ll"
    exec "! ./fl"
endf

" Compile & Run Golang Project.
function! CompileGolang()
    exec "w"
    silent exec "!go build -o main"
    exec "!time ./main"
endf

function! K8sDryRun()
    exec "!kubectl create -f % --dry-run"
endf

function! K8sCreate()
    exec "!kubectl create -f % --dry-run -o yaml | kubectl create -f -"
endf

function! K8sReplace()
    exec "!kubectl create -f % --dry-run -o yaml | kubectl replace -f -"
endf

function! Run()
  if &filetype == 'sh'
    call "!bash %"
  elseif &filetype == 'python'
    exec "!time python %"
  elseif &filetype == 'php'
    exec "!time php %"
  elseif &filetype == 'javascript'
    exec "!time node %"
  elseif &filetype == 'ruby'
    exec "!time ruby %"
  elseif &filetype == 'c'
    call Compile()
  elseif &filetype == 'cpp'
    call Compile()
  elseif &filetype == 'go'
    call CompileGolang()
  elseif &filetype == 'java'
    call CompileJava()
  elseif &filetype == 'yaml'
    call K8sDryRun()
  else
    exec "!make run"
  endif
endf

nnoremap sc :call K8sCreate()<CR>
nnoremap sr :call K8sReplace()<CR>

nnoremap rr :call Run()<CR>
nnoremap rl :source ~/.vimrc<CR>

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
