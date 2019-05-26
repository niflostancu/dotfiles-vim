" Plugins for C-based languages
let plug = vimconf#plugin#register("lang/java")

" Clang autocompletion for deoplete
let plug.javacomplete2 = {'from': "artur-shaik/vim-javacomplete2", "on_ft": "java"}

function plug.javacomplete2.hook_source() dict
	autocmd VimCfg FileType java setlocal omnifunc=javacomplete#Complete
endfunction

" vim: set foldmethod=marker ts=2 sw=2 tw=80 noet :

