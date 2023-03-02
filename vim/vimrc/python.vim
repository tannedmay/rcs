" Put coding lines in every py file as soon as you create it 
if has("autocmd")
augroup content
autocmd BufNewFile *.py
   \ 0put = '# -*- coding: utf-8 -*-' |
   \ norm gg19jf]
augroup END
endif

:command! IpdbBreakPointBelow :normal oimport ipdb; ipdb.set_trace()<ESC>
:command! IpdbBreakPointAbove :normal Oimport ipdb; ipdb.set_trace()<ESC>

autocmd FileType python nnoremap <leader>b  <ESC>:IpdbBreakPointBelow<CR>
autocmd FileType python nnoremap <leader>B  <ESC>:IpdbBreakPointAbove<CR>

autocmd FileType python nmap <silent> <C-_> <Plug>(pydocstring)
