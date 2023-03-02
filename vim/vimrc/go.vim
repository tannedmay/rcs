" completion popup menu
" set completeopt=menuone,preview
let g:go_auto_type_info = 1

let g:go_addtags_transform = 'camelcase'
let g:go_term_close_on_exit = 1

let g:go_debug_windows = {
    \ 'vars':  'rightbelow 60vnew',
\ }

" vim-go debug mapping since let g:go_debug_mappings not working
nmap c <Plug>(go-debug-continue)
nmap b <Plug>(go-debug-breakpoint)
nmap n <Plug>(go-debug-next)
nmap s <Plug>(go-debug-step)
nmap q <Plug>(go-debug-stop)

" Golang shortcuts- https://gist.github.com/krlvi/d22bdcb66566261ea8e8da36f796fa0a
" autocmd FileType go nmap <leader>n <Plug>(go-run-vertical)
autocmd FileType go nmap <leader>e <Plug>(go-iferr)
autocmd FileType go nmap <leader>r  <Plug>(go-rename)
autocmd FileType go nmap <leader>t  <Plug>(go-test-func)
autocmd FileType go nmap <leader>a  <Plug>(go-alternate-vertical)
nnoremap <Leader>y :GoKeyify<CR>
nnoremap <Leader>a :GoAddTags<CR>
nnoremap <Leader>u :GoFillStruct<CR>
autocmd FileType go nmap <leader>i  <Plug>(go-implements)
nnoremap <Leader>i :GoImpl<CR>
autocmd FileType go nmap <leader>s  <Plug>(go-describe)
nnoremap <Leader>d :GoDebugTest<CR>
nnoremap <Leader>b :GoDebugBreakpoint<CR>
autocmd FileType go nmap <leader>h  <Plug>(go-referrers)
nnoremap <Leader>H :GoSameIdsToggle<CR>
