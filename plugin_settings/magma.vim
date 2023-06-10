" ========
" =========magma
" ========

nnoremap <silent>       <leader>mk :MagmaInit python3<CR>
nnoremap <silent>       <leader>mm :MagmaEvaluateLine<CR>
nnoremap <silent><expr> <leader>m  :MagmaEvaluateOperator<CR>
nnoremap <silent>       <leader>mr :MagmaEvaluateLine<CR>
xnoremap <silent>       <leader>m  :<C-u>MagmaEvaluateVisual<CR>
nnoremap <silent>       <leader>mc :MagmaReevaluateCell<CR>
nnoremap <silent>       <leader>md :MagmaDelete<CR>
nnoremap <silent>       <leader>mo :MagmaShowOutput<CR>

let g:magma_automatically_open_output = v:false
" let g:magma_image_provider = "ueberzug"
