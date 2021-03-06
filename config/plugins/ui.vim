" VIM UI-related plugins (e.g. theme, status line etc.)
let plug = vimconf#plugin#register("ui")

" Dein plugin manager UI :D 
let plug.dein_ui = {'from': 'wsdjeg/dein-ui.vim'}

" Themes:
let plug.theme_one = {'from': "rakr/vim-one"}
let plug.theme_onedark ={'from': "joshdick/onedark.vim"} 

" Airline (custom status / tab bar)
let plug.airline = {'from': "vim-airline/vim-airline"}
function plug.airline.hook_add() dict
	let g:airline_powerline_fonts = 1
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#taboo#enabled = 1
	let g:airline#extensions#tabline#show_tabs = 1
	let g:airline#extensions#tabline#show_splits = 0
	let g:airline#extensions#tabline#show_buffers = 0
	let g:airline#extensions#tabline#tab_nr_type = 1
	let g:airline#extensions#tabline#show_close_button = 0

	let g:airline#extensions#tabline#buffers_label = 'b'
	let g:airline#extensions#tabline#tabs_label = 'T'

	let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

	let g:airline_section_z = airline#section#create([
				\ 'windowswap', 'obsession', '%3p%%',
				\ 'linenr', 'maxlinenr', ':%c%V'])

	let g:airline#extensions#hunks#enabled = 0
	let g:airline#extensions#branch#enabled = 1
	let g:airline#extensions#branch#format = 2
	let g:airline#extensions#branch#displayed_head_limit = 15

	let g:airline#extensions#whitespace#enabled = 0

	let g:airline_theme = "one"

  let g:airline_mode_map = {} " see source for the defaults

  " or copy paste the following into your vimrc for shortform text
  let g:airline_mode_map = {
      \ '__': '-',
      \ 'c': 'CHG',
      \ 'i': 'INS', 'ic': 'INS', 'ix': 'INS',
      \ 'multi': 'MUL',
      \ 'n': 'NORM', 'ni': 'NORM', 'no': 'NORM',
      \ 'R': 'REPL', 'Rv': 'REPL',
      \ 's': 'S', 'S': 'S', '': 'S',
      \ 't': 'T',
      \ 'v': 'VIS', 'VIS': 'VIS', '': 'VIS',
      \ }
endfunction

let plug.airline_themes = {'from': "vim-airline/vim-airline-themes"}

" See the contents of the registers ('@' / '"')
" Temporary workaround: use deathlyfrantic/vim-peekaboo with bugfix patch
let plug.peekaboo = {'from': "deathlyfrantic/vim-peekaboo", 'rev': 'patch-1'}

" Seamless TMux navigation
let plug.tmux_navigator = {'from': "christoomey/vim-tmux-navigator"}
function plug.tmux_navigator.hook_add() dict
	nnoremap <silent> <C-Left> :TmuxNavigateLeft<CR>
	nnoremap <silent> <C-Down> :TmuxNavigateDown<CR>
	nnoremap <silent> <C-Up> :TmuxNavigateUp<CR>
	nnoremap <silent> <C-Right> :TmuxNavigateRight<CR>
endfunction

" Undo tree!
let plug.undotree = {'from': "mbbill/undotree", "on_cmd": "UndotreeToggle"}
function plug.undotree.hook_add() dict
	let g:undotree_SplitWidth = 18
endfunction

" Indent guides
let plug.indentguides = {'from': "nathanaelkane/vim-indent-guides"}
function! plug.indentguides.hook_add() dict
	let g:indent_guides_color_change_percent = 3
	let g:indent_guides_default_mapping = 0
	let g:indent_guides_guide_size = 1
	let g:indent_guides_start_level = 1
	let g:indent_guides_indent_levels = 15
	let g:indent_guides_exclude_filetypes = ['help', 'denite']
	let g:indent_guides_auto_colors = 0
endfunction
let g:indent_guides_enable_on_vim_startup = 1

" Readline key bindings on vim cmdline (e.g., C-e, C-f)
let plug.rsi = {'from': "tpope/vim-rsi"}

" vim: set foldmethod=marker ts=2 sw=2 tw=80 noet :
