" Enable gutentags
" let g:gutentags_enabled = 1
" let g:gutentags_add_default_project_roots = 0

" Easytags
" let g:easytags_auto_update = 0 " Disable auto tags generation, gutentags will do this

if !exists('b:deoplete_omni_input_patterns')
	let b:deoplete_omni_input_patterns = {}
	let b:deoplete_omni_input_patterns.tex = '\\(?:'
		\ .  '\w*cite\w*(?:\s*\[[^]]*\]){0,2}\s*{[^}]*'
		\ . '|\w*ref(?:\s*\{[^}]*|range\s*\{[^,}]*(?:}{)?)'
		\ . '|hyperref\s*\[[^]]*'
		\ . '|includegraphics\*?(?:\s*\[[^]]*\]){0,2}\s*\{[^}]*'
		\ . '|(?:include(?:only)?|input)\s*\{[^}]*'
		\ . '|\w*(gls|Gls|GLS)(pl)?\w*(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
		\ . '|includepdf(\s*\[[^]]*\])?\s*\{[^}]*'
		\ . '|includestandalone(\s*\[[^]]*\])?\s*\{[^}]*'
		\ .')'
endif

" autocmd FileType tex :call SetupLatexMode()
