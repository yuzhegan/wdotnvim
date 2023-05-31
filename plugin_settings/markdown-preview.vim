" ===
" === markdown preview markedown预览插件
" wslg 中需要关闭代理
" ===
let g:mkdp_auto_start = 0
" 设置为 1 可以在打开 markdown 文件的时候自动打开浏览器预览，只在打开
let g:mkdp_auto_close = 1
" Set to 1, Vim will automatically close the current preview window when
" switching from one Markdown buffer to another.
"let g:mkdp_command_for_global = 1
let g:mkdp_theme = 'dark'
let g:mkdp_open_to_the_world = 1
let g:mkdp_open_ip = '127.0.0.1' " change to you vps or vm ip
let g:mkdp_port = 65141
let g:mkdp_filetypes = ['markdown', 'html']
"function! g:EchoUrl(url)
		":echo a:url
"endfunction
" let g:mkdp_browserfunc = 'g:EchoUrl'
"let g:mkdp_echo_preview_url = 1
function OpenMarkdownPreview (url)
	execute "silent ! edge --new-window " . a:url
endfunction
let g:mkdp_browserfunc = 'OpenMarkdownPreview'
