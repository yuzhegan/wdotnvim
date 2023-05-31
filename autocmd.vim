" ==================== Auto load for first time uses ====================
let s:dein_path = '~/.config/nvim/dein'

" Add the dein installation directory into runtimepath
let &runtimepath = &runtimepath.','.s:dein_path.'/repos/github.com/Shougo/dein.vim'

if dein#load_state(s:dein_path)
  call dein#begin(s:dein_path)

  " Create a _machine_specific.vim file to adjust machine specific stuff, like python interpreter location 
  let has_machine_specific_file = 1
  if empty(glob('~/.config/nvim/_machine_specific.vim'))
    let has_machine_specific_file = 0
    silent! exec "!cp ~/.config/nvim/default_configs/_machine_specific_default.vim ~/.config/nvim/_machine_specific.vim"
  endif
  source $HOME/.config/nvim/_machine_specific.vim

  " install third-party plugins

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on syntax enable

" Install plugins if dein is not installed or some plugins are not installed
if !isdirectory(s:dein_path) || !dein#check_install()
  autocmd VimEnter * call dein#install()
endif


