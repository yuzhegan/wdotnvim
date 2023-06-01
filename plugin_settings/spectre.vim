"=================nvim-spectre============

" Spectre setup

" Key mappings
nnoremap <LEADER>f :lua require'spectre'.open()<CR>
vnoremap <LEADER>f :lua require'spectre'.open_visual()<CR>

" lua <<EOF
" 	
" require'spectre'.setup{}
"
" EOF
