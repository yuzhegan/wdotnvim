" ===
" === Install Plugins with Vim-Plug
" ===

if &compatible
  set nocompatible
endif

let s:dein_path = '~/.config/nvim/dein'

" Add the dein installation directory into runtimepath
let &runtimepath = &runtimepath.','.s:dein_path.'/repos/github.com/Shougo/dein.vim'




call dein#begin(s:dein_path)

"wsl copy
call dein#add('christianfosli/wsl-copy', { 'rev': 'f1036eb9', 'lazy': 1 })
" lf
call dein#add('gboncoffee/lf.vim', {'lazy': 1})
" commend
call dein#add('gelguy/wilder.nvim', {'on_path': '*', 'hook_post_update': 'UpdateRemotePlugins'})


call dein#add('haya14busa/dein-command.vim', {'lazy': 1,
			\'on_cmd': 'Dein'})
"python
call dein#add('wookayin/vim-autoimport', {'on_ft': 'python',
			\'lazy': 1})
call dein#add('yssl/AutoCWD.vim', {'lazy': 1})

" Auto Complete
call dein#add('neoclide/coc.nvim', {'commit': '63dd239bfe02998810b39d039827e2510885b57b', 'build': 'yarn install --frozen-lockfile', 'lazy':1, 'on_event':'InsertEnter'})
call dein#add('wellle/tmux-complete.vim', {'lazy':1, 'on_event':'InsertEnter'})
call dein#add('github/copilot.vim', {'lazy':1, 'on_event':'InsertEnter'})
" Snippets
call dein#add('theniceboy/vim-snippets', {'lazy':1, 'on_event':'InsertEnter'})

" format
call dein#add('Vimjas/vim-python-pep8-indent', {'on_ft': ['python', 'vim-plug'],
			\'lazy': 1})
call dein#add('numirias/semshi', {'build':'UpdateRemotePlugins'})

call dein#add('tweekmonster/braceless.vim', {'for': ['python', 'vim-plug'],
			\'lazy': 1, 'on_ft': 'python'})

"translate
call dein#add('voldikss/vim-translator', {'on_event': 'VimEnter',
        \'lazy':1})
"input method
" call dein#add('lilydjwg/fcitx.vim', {'on_event': 'InsertEnter', 
" 			\'lazy': 1})
"python jupyter tumnx
call dein#add('jpalardy/vim-slime', {'on': 'RemotePlugin',
			\'on_ft': 'python',
			\'lazy': 1})
call dein#add('hanschen/vim-ipython-cell', {'on_ft': 'python', 
			\'lazy': 1})

call dein#add('christoomey/vim-tmux-navigator')
"theme
call dein#add('theniceboy/nvim-deus' )
call dein#add('theniceboy/eleline.vim')
call dein#add('ojroques/vim-scrollstatus')

"file nevagatie
call dein#add('ibhagwan/fzf-lua')
call dein#add('junegunn/fzf', {'build': { -> fzf#install() },
			\'lazy':1})
call dein#add('junegunn/fzf.vim', {'lazy':1})
" call dein#add('kevinhwang91/rnvimr', {'lazy':1})
call dein#add('airblade/vim-rooter', {'lazy':1})
call dein#add('pechorin/any-jump.vim', {'lazy':1})
call dein#add('liuchengxu/vista.vim', {'lazy': 1})

" Undo tree
call dein#add('mbbill/undotree', {'lazy': 1})

" Git
call dein#add('theniceboy/vim-gitignore', {'on_ft': ['gitignore', 'vim-plug'],})
call dein#add('theniceboy/fzf-gitignore', {'build': ':UpdateRemotePlugins'})
call dein#add('airblade/vim-gitgutter', {'lazy': 1})
call dein#add('cohama/agit.vim', {'lazy': 1, 'on_event': 'BufRead'})
call dein#add('kdheepak/lazygit.nvim', {'lazy': 1 })
" markdown
call dein#add('iamcco/markdown-preview.nvim', {'build': 'cd app && yarn install',
			\'lazy': 1, 'on_ft': 'markdown'})
call dein#add('dhruvasagar/vim-table-mode', {'on': 'TableModeToggle', 'on_ft': ['text', 'markdown', 'vim-plug']})

call dein#add('mzlogin/vim-markdown-toc', {'on_ft': ['gitignore', 'markdown', 'vim-plug'],
			\'lazy': 1})
call dein#add('kevinhwang91/nvim-hlslens')
call dein#add('ggandor/lightspeed.nvim')
call dein#add('jiangmiao/auto-pairs')
call dein#add('mg979/vim-visual-multi')
call dein#add('tomtom/tcomment_vim')
call dein#add('theniceboy/antovim')
call dein#add('tpope/vim-surround')
call dein#add('gcmt/wildfire.vim')
call dein#add('godlygeek/tabular')
call dein#add('svermeulen/vim-subversive')
call dein#add('theniceboy/pair-maker.vim', {'on_event': 'InsertEnter',
			\'lazy': 1})
call dein#add('Yggdroot/indentLine', {'on_ft': ['python'],
			\'lazy': 1})

"find and replace
call dein#add('nvim-lua/plenary.nvim', {'lazy': 1,
			\'depends': ['nvim-treesitter/nvim-treesitter']})
call dein#add('nvim-pack/nvim-spectre', {'lazy': 1})
			
"other visual enhancement
call dein#add('luochen1990/rainbow', {'on_ft': ['python', 'vim-plug'],
			\'lazy': 1})
call dein#add('ryanoasis/vim-devicons')
call dein#add('wincent/terminus')
call dein#add('lambdalisue/suda.vim', {'lazy': 1, 'on_cmd': 'sudowrite'})







call dein#end()





