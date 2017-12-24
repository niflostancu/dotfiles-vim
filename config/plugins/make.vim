" Generic make plugins
let plug = g:user_plugins

" Neomake!
let plug.neomake = {'from': "neomake/neomake", "on_cmd": "Neomake"}

function plug.neomake.hook_source() dict
	call neomake#configure#automake({
		\  "BufWritePost": {"delay": 0}
		\ })

	let g:neomake_echo_current_error = 0
	let g:neomake_open_list = 0
	let g:neomake_verbose = 0

endfunction

" vim: set foldmethod=marker ts=2 sw=2 tw=80 noet :

