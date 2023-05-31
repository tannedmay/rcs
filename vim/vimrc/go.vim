" completion popup menu
" set completeopt=menuone,preview
let g:go_auto_type_info = 1

let g:go_addtags_transform = 'camelcase'
let g:go_term_close_on_exit = 1

let g:go_debug_windows = {
    \ 'stack': 'rightbelow 20new',
    \ 'vars':  'rightbelow 60vnew',
\ }

let g:go_term_enabled = 1
let g:go_term_mode = "split"
let g:go_term_height = 10
let g:go_term_width = 10
let g:go_term_reuse = 1
let g:go_template_use_pkg = 1
let g:go_term_close_on_exit = 1
let g:go_list_type = "quickfix"

let g:go_debug_mappings = {
    \ '(go-debug-continue)': {'key': 'c', 'arguments': '<nowait>'},
    \ '(go-debug-stop)': {'key': 'q'},
    \ '(go-debug-breakpoint)': {'key': 'b'},
    \ '(go-debug-next)': {'key': 'n', 'arguments': '<nowait>'},
    \ '(go-debug-step)': {'key': 's'},
\}

" Golang shortcuts- https://gist.github.com/krlvi/d22bdcb66566261ea8e8da36f796fa0a
autocmd FileType go nmap <leader>r  <Plug>(go-rename)
autocmd FileType go nmap <leader>v  <Plug>(go-alternate-edit)
autocmd FileType go nmap <leader>i  :GoImpl<CR>
autocmd FileType go nmap <leader>k :GoKeyify<CR>
autocmd FileType go nmap <leader>a :GoAddTags<CR>
autocmd FileType go nmap <leader>f :GoFillStruct<CR>
autocmd FileType go nmap <leader>b :GoBuild $TOP/main<CR>
autocmd FileType go nmap <leader>n :GoRun -C $TOP $TOP/main<CR>
autocmd FileType go nmap <leader>c :GoErrCheck<CR>

autocmd FileType go nmap gi  :GoImplements<CR>
autocmd FileType go nmap gh  <Plug>(go-referrers)
autocmd FileType go nmap q <Plug>(go-debug-stop)
autocmd FileType go nmap b <Plug>(go-debug-breakpoint)
autocmd FileType go nmap m <Plug>(go-debug-next)
autocmd FileType go nmap s <Plug>(go-debug-step)
autocmd FileType go nmap <leader>d :GoDebugTest<CR>
autocmd FileType go nmap <leader>br :GoDebugBreakpoint<CR>
