call plug#begin('~/.vim/plugged')

" Completion LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" git wrapper- :help fugitive for more
Plug 'tpope/vim-fugitive'

" alternative to taglist - tagbar
Plug 'majutsushi/tagbar'

" show directory struction- :help nerdtree
Plug 'scrooloose/nerdtree'

" python syntax highlighting
Plug 'hdima/python-syntax'

" poweline alternative
Plug 'vim-airline/vim-airline'

" fullsize a window <C-w>o
Plug 'taylor/vim-zoomwin'

" proper indentation 
Plug 'vim-scripts/indentpython.vim'

" pylint, pep8 runtime
Plug 'scrooloose/syntastic'

" search for files
Plug 'ctrlpvim/ctrlp.vim'

" comment/uncomment
Plug 'vim-scripts/tComment'

" custom modes like insert, visual
Plug 'vim-scripts/tinymode.vim'

" bclose to close buff without closing window
Plug 'rbgrouleff/bclose.vim'

" indent object
Plug 'michaeljsmith/vim-indent-object'

" Indent line
" Plug "Yggdroot/indentLine"

" auto docstring python
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }

" substitute multiple variants of a word 
Plug 'tpope/vim-abolish'

" incsearch.vim incrementally highlights ALL pattern matches unlike default 'incsearch'.
" Plug 'haya14busa/incsearch.vim'

" GO programming plugin
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" ripgrep plugin
Plug 'jremmen/vim-ripgrep'

" CSV support
Plug 'chrisbra/csv.vim'

" Golang debugger
Plug 'sebdah/vim-delve'

" Split code or join single line code
Plug 'AndrewRadev/splitjoin.vim'

" snippet repeated
Plug 'SirVer/ultisnips'

" Run testcases
Plug 'vim-test/vim-test'

" fork from ton/vim-alternate
Plug 'tannedmay/vim-alternate'

" quickfix movement
Plug 'yssl/QFEnter'

" dispatch task
Plug 'tpope/vim-dispatch'

" Spell check
Plug 'kamykn/spelunker.vim'

" fuzzy search fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

" tagbar conf
let g:tagbar_type_mkd= {
            \ 'ctagstype' : 'md',
            \ 'kinds' : [
            \ 'h:headings'
            \ ],
            \ 'sort' : 0,
            \ }
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

let g:tagbar_autoclose_netrw = 1
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1

" python-syntax conf
let python_highlight_all = 1

" airline conf
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" syntastic conf
let g:syntastic_python_checkers = ['pep8', 'pylint', 'flake8', 'pydocstyle', 'nulint']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" line length ignore
let g:syntastic_python_flake8_args='--ignore=E501'
let g:syntastic_python_pep8_args='--ignore=E501'
let g:syntastic_python_pylint_args='--disable=line-too-long,abstract-method,attribute-defined-outside-init,no-member,logging-not-lazy,relative-import,too-many-arguments'
let g:syntastic_python_pydocstyle_args='--ignore=D210,D400,D213,D205,D202,D203,D208,D403,D300'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height=5
let g:syntastic_check_on_open = 0
let g:syntastic_aggregate_errors = 1

" ctrlp ignore
set wildignore+=*.pyc     " MacOSX/Linux
set wildignore+=*.html     " MacOSX/Linux
let g:ctrlp_extensions = ['tag']

" tinymode conf - resize current window mode
call tinymode#EnterMap("winsize", "ws", "") 
call tinymode#Map("winsize", "j", "wincmd +") 
call tinymode#Map("winsize", "k", "wincmd -") 
call tinymode#Map("winsize", "h", "wincmd <") 
call tinymode#Map("winsize", "l", "wincmd >")
call tinymode#ModeMsg("winsize", "--WINSIZE--") 
call tinymode#ModeArg("winsize", "timeoutlen", 5000) 

" line indent
let g:indentLine_color_tty_dark = 4
let g:indentLine_conceallevel = 1
let g:indentLine_char = '┊'

" pydocstring
let g:pydocstring_templates_path = "$WORKSPACE/vim/pydocstring/"
let g:pydocstring_templates_dir = "$WORKSPACE/vim/pydocstring/"

" ripgrep
let g:rg_derive_root = 'true'

let g:csv_delim='\t'
let g:csv_autocmd_arrange=1

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsListSnippets = "<c-h>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]

let g:AlternateExtensionMappings = [{'.go' : '_test.go', '_test.go' : '.go'}]
let g:AlternatePaths = ['./test', '../', './internal/test', './']

let test#strategy = {
  \ 'nearest': 'basic',
  \ 'file':    'dispatch',
  \ 'suite':   'dispatch',
\}

function! CustomAlternateFile()
    return g:AlternateFile()
endfunction

let g:test#custom_alternate_file = function('CustomAlternateFile')

let g:spelunker_white_list_for_user = ['vimrc']

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
