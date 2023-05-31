"vim-translator
" nnoremap ts :TranslateW<CR>
nmap <silent> ts <Plug>TranslateW
vmap <silent> ts <Plug>TranslateWV
let g:translator_default_engines = ['bing','haici']
