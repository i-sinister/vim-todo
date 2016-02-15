if exists("b:current_syntax")
	finish
endif

hi default todoCompleted ctermfg=154 guifg=#aeee00
hi default todoPending ctermfg=211 guifg=#ff9eb8
hi default todoDiscarded ctermfg=214 guifg=#ffa724
hi default todoCurrent ctermfg=39 guifg=#0a9dff
hi default todoQuestion ctermfg=196 guifg=#ff2c4b

syn region todoCompleted start=/^\s*+.*/ end=/\n\ze\%(\_^\s*[+\*x>?]\)/ fold
syn region todoPending start=/^\s*\*.*/ end=/\n\ze\%(\_^\s*[+\*x>?]\)/ fold
syn region todoDiscarded start=/^\s*x.*/ end=/\n\ze\%(\_^\s*[+\*x>?]\)/ fold
syn region todoCurrent start=/^\s*>.*/ end=/\n\ze\%(\_^\s*[+\*x>?]\)/ fold
syn region todoQuestion start=/^\s*?.*/ end=/\n\ze\%(\_^\s*[+\*x>?]\)/ fold

hi link todoCompleted todoCompleted
hi link todoPending todoPending
hi link todoDiscarded todoDiscarded
hi link todoCurrent todoCurrent
hi link todoQuestion todoQuestion

let b:current_syntax = "todo"
