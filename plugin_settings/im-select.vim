
" let g:im_select_command="/mnt/c/im-select/im-select.exe"
" let g:im_select_command="/mnt/c/im/im-select.exe"
" let g:im_select_default="1033"
" let g:im_select_enable_focus_events=0


"不设置这个延迟很高
set ttimeoutlen=0

if system('uname -r') =~ "microsoft"

let g:im_path="im-select.exe" 
let g:im_status="1033"
 " wsl 输入法自动切换
function Im_ILeave()
let g:im_status=system(g:im_path)
call system(g:im_path . " 1033" )
endfunction

function Im_IEnter()
call system(g:im_path .' '. g:im_status)
endfunction


au InsertLeave * exec ":silent call Im_ILeave()"
au InsertEnter * exec ":silent call Im_IEnter()"
au VimEnter   * exec ':silent call system("' . g:im_path. ' 1033")'



endif
