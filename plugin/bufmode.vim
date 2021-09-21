if exists('g:loaded_bufeditmode')
	finish
endif
let g:loaded_bufeditmode = 1

nnoremap <unique> <silent> <Plug>(BufEditmodeEnter) <Cmd>lua require('bufmode')()<CR>
nmap <unique> <silent> <leader>h <C-W>h<Plug>(BufEditmodeEnter)
nmap <unique> <silent> <leader>l <C-W>l<Plug>(BufEditmodeEnter)
nmap <unique> <silent> <leader>j <C-W>k<Plug>(BufEditmodeEnter)
nmap <unique> <silent> <leader>k <C-W>j<Plug>(BufEditmodeEnter)

tmap <unique> <silent> <leader>h <Esc><C-W>h<Plug>(BufEditmodeEnter)
tmap <unique> <silent> <leader>l <Esc><C-W>l<Plug>(BufEditmodeEnter)
tmap <unique> <silent> <leader>j <Esc><C-W>k<Plug>(BufEditmodeEnter)
tmap <unique> <silent> <leader>k <Esc><C-W>j<Plug>(BufEditmodeEnter)


if !exists(':BufEditmodeEnter')
	command! BufEditmodeEnter lua require('bufeditmode')()
endif
