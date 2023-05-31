" Key bindings can be changed, see below
" " Key bindings can be changed, see below
call wilder#setup({'modes': [':', '/', '?']})

" Default keys
call wilder#setup({
      \ 'modes': [':', '/', '?'],
      \ 'next_key': '<C-j>',
      \ 'previous_key': '<C-k>',
      \ 'accept_key': '<C-o>',
      \ 'reject_key': '<C-d>',
      \ })
" call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_palette_theme({
"       \ 'border': 'rounded',
"       \ 'max_height': '75%',
"       \ 'min_height': '50%',
"       \ 'prompt_position': 'top',
"       \ 'reverse': 0,
"       \ })))
call wilder#set_option('renderer', wilder#renderer_mux({
      \ ':': wilder#popupmenu_renderer(),
      \ '/': wilder#wildmenu_renderer(),
      \ }))
call wilder#set_option('renderer', wilder#popupmenu_renderer({
      \ 'pumblend': 20,
      \ }))
" call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
"       \ 'highlights': {
"       \   'border': 'Normal',
"       \ },
"       \ 'border': 'rounded',
"       \ })))
" call wilder#set_option('renderer', wilder#popupmenu_renderer({
"       \ 'highlighter': wilder#basic_highlighter(),
"       \ 'left': [
"       \   ' ', wilder#popupmenu_devicons(),
"       \ ],
"       \ 'right': [
"       \   ' ', wilder#popupmenu_scrollbar(),
"       \ ],
"       \ }))
