" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
nnoremap ; :
" shortcuts
set pastetoggle=<F2>
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

" disable <Tab> on nerdtree window
autocmd FileType nerdtree noremap <buffer> <Tab> <nop>
autocmd VimEnter * NERDTree | wincmd p

nmap <silent> <S-Up> :wincmd k<CR>
nmap <silent> <S-Down> :wincmd j<CR>
nmap <silent> <S-Left> :wincmd h<CR>
nmap <silent> <S-Right> :wincmd l<CR>
nmap <silent> <S-q> :wincmd c<CR>

nnoremap <F3> <ESC>:NERDTreeToggle<CR>
nnoremap <F4> <ESC>:TagbarToggle<CR>
nnoremap <F6> :source ~/.vimrc<CR>

nnoremap <space> za
vnoremap <space> zf

nnoremap <NUL> zi
vnoremap <NUL> zi

map <C-Q> <ESC>:Bclose<CR>

" ctrl + s save
" silent !stty -ixon > /dev/null 2>/dev/null
" imap <C-S> <ESC>:w<CR>
" vmap <C-S> <ESC>:w<CR>
" nmap <C-S> :w<CR>

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

:nnoremap <CR> :nohlsearch<CR><CR>

nnoremap <C-E> <Esc>:SyntasticCheck<CR>

" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

:command! S :Subvert

:command! Q :q

nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>at :TestSuite<CR>

:autocmd FileType qf nmap <buffer> <cr> <cr>:lcl<cr>
