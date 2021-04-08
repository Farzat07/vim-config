" tmuxline.vim settings

let g:tmuxline_preset = 'Custom_powerline'
fun! Custom_powerline()
  let bar = tmuxline#new()

  call bar.left.add('a', '#S')
  call bar.left.add_left_sep()

  call bar.right.add_right_sep()
  call bar.right.add('x', '%a')

  call bar.right.add_right_sep()
  call bar.right.add('y', '%Y-%m-%d')
  call bar.right.add_right_alt_sep()
  call bar.right.add('y', '%H:%M')
  call bar.right.add_right_sep()

  call bar.right.add('z', '#H')

  call bar.win.add('win.dim', '#I')
  call bar.win.add_left_alt_sep()
  call bar.win.add('win', '#W#F')

  call bar.cwin.add_left_sep()
  call bar.cwin.add('cwin.dim', '#I')
  call bar.cwin.add_left_alt_sep()
  call bar.cwin.add('cwin', '#W#F')
  call bar.cwin.add_left_sep()

  let bar.options['status-justify'] = 'left'
  let bar.win_options['window-status-activity-style'] = 'none'

  return bar
endfun
command TmuxlineSave TmuxlineSnapshot! ~/.code_stuff/.tmuxline
" if exists('$TMUX')
" 	autocmd InsertEnter * Tmuxline airline_insert
" 	autocmd InsertLeave * Tmuxline airline
"     autocmd UILeave * Tmuxline
" endif
