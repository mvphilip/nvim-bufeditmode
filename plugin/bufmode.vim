if exists('g:loaded_bufeditmode')
	finish
endif
let g:loaded_bufeditmode = 1

nnoremap <unique> <silent> <Plug>(BufEditmodeEnter) <Cmd>lua require('bufmode')()<CR>
nmap <unique> <silent> <leader>sj <S-j><Plug>(BufEditmodeEnter)
nmap <unique> <silent> <leader>. <C-W>><Plug>(BufEditmodeEnter)
nmap <unique> <silent> <leader>, <C-W><<Plug>(BufEditmodeEnter)
nmap <unique> <silent> <leader>- <C-W>_<Plug>(BufEditmodeEnter)
nmap <unique> <silent> <leader>= <C-W>+<Plug>(BufEditmodeEnter)

if !exists(':BufEditmodeEnter')
	command! BufEditmodeEnter lua require('bufeditmode')()
endif
