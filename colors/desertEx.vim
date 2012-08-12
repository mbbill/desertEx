" Vim color file
" Maintainer:   Mingbai <mbbill AT gmail DOT com>

set background=dark
if version > 580
	" no guarantees for version 5.8 and below, but this makes it stop
	" complaining
	hi clear
	if exists("syntax_on")
	syntax reset
	endif
endif
let g:colors_name="desertEx"

" Under GUI
if has("gui_running")
" highlight groups
	highlight Normal guifg=gray guibg=grey17 gui=NONE
	highlight Cursor guifg=black guibg=yellow gui=NONE
	highlight DiffAdd guifg=black guibg=wheat1
	highlight DiffChange guifg=black guibg=skyblue1
	highlight DiffDelete guifg=black guibg=gray45 gui=NONE
	highlight DiffText guifg=black guibg=hotpink1 gui=NONE
	highlight ErrorMsg guifg=white guibg=red gui=NONE
	highlight FoldColumn guifg=tan guibg=grey30 gui=NONE
	highlight Folded guifg=darkslategray3 guibg=grey30 gui=NONE
	highlight IncSearch guifg=#b0ffff guibg=#2050d0
	highlight LineNr guifg=burlywood3 gui=NONE
	highlight MatchParen guifg=cyan guibg=NONE gui=bold
	highlight ModeMsg guifg=skyblue gui=NONE
	highlight MoreMsg guifg=seagreen gui=NONE
	highlight NonText guifg=cyan guibg=gray20 gui=NONE
	highlight Pmenu guifg=white guibg=#445599 gui=NONE
	highlight PmenuSel guifg=#445599 guibg=gray
	highlight Question guifg=springgreen gui=NONE
	highlight Search guifg=gray80 guibg=#445599 gui=NONE
	highlight SpecialKey guifg=gray30 gui=NONE
	highlight StatusLine guifg=black guibg=#c2bfa5 gui=bold
	highlight StatusLineNC guifg=grey guibg=gray40 gui=NONE
	highlight Title guifg=indianred gui=NONE
	highlight VertSplit guifg=gray40 guibg=gray40 gui=NONE
	highlight Visual guifg=gray17 guibg=tan1 gui=NONE
	highlight WarningMsg guifg=salmon gui=NONE
	highlight WildMenu guifg=gray guibg=gray17 gui=NONE
	highlight colorcolumn guibg=gray30

	" syntax highlighting groups
	highlight Comment guifg=palegreen3 gui=NONE
	highlight Constant guifg=salmon gui=NONE
	highlight Identifier guifg=skyblue gui=NONE
	highlight Function guifg=skyblue gui=NONE
	highlight Statement guifg=lightgoldenrod2 gui=bold
	highlight PreProc guifg=palevioletred2 gui=NONE
	highlight Type guifg=tan1 gui=bold
	highlight Special guifg=aquamarine2 gui=NONE
	highlight Ignore guifg=grey40 gui=NONE
	highlight Todo guifg=orangered guibg=yellow2 gui=NONE

	" for status line, see notes below. (default off)
	if exists("g:desertEx_statusLineColor")
		highlight User1 guifg=gray10 gui=bold guibg=#eeb422
		highlight User2 guifg=gray85 gui=bold guibg=gray30
		highlight User3 guifg=gray10 gui=bold guibg=gray50
		highlight User4 guifg=gray10 gui=bold guibg=gray70
		highlight User5 guifg=gray10 gui=bold guibg=gray90
	endif

elseif &t_Co == 256		"under 256-color term

	" highlight groups
	highlight Normal ctermfg=250 ctermbg=235 cterm=NONE
	highlight Cursor ctermfg=16 ctermbg=226 cterm=NONE
	highlight DiffAdd ctermfg=16 ctermbg=223
	highlight DiffChange ctermfg=16 ctermbg=117
	highlight DiffDelete ctermfg=16 ctermbg=243 cterm=NONE
	highlight DiffText ctermfg=16 ctermbg=205 cterm=NONE
	highlight ErrorMsg ctermfg=231 ctermbg=196 cterm=NONE
	highlight FoldColumn ctermfg=180 ctermbg=239 cterm=NONE
	highlight Folded ctermfg=116 ctermbg=239 cterm=NONE
	highlight IncSearch ctermfg=159 ctermbg=26
	highlight LineNr ctermfg=180 cterm=NONE
	highlight MatchParen ctermfg=51 cterm=bold
	highlight ModeMsg ctermfg=117 cterm=NONE
	highlight MoreMsg ctermfg=29 cterm=NONE
	highlight NonText ctermfg=51 ctermbg=236 cterm=NONE
	highlight Pmenu ctermfg=231 ctermbg=61 cterm=NONE
	highlight PmenuSel ctermfg=61 ctermbg=250
	highlight Question ctermfg=48 cterm=NONE
	highlight Search ctermfg=252 ctermbg=61 cterm=NONE
	highlight SpecialKey ctermfg=240 cterm=NONE
	highlight StatusLine ctermfg=16 ctermbg=144 cterm=bold
	highlight StatusLineNC ctermfg=250 ctermbg=241 cterm=NONE
	highlight Title ctermfg=167 cterm=NONE
	highlight VertSplit ctermfg=241 ctermbg=241 cterm=NONE
	highlight Visual ctermfg=235 ctermbg=215 cterm=NONE
	highlight WarningMsg ctermfg=210 cterm=NONE
	highlight WildMenu ctermfg=250 ctermbg=235 cterm=NONE
	highlight colorcolumn ctermbg=240

	" syntax highlighting groups
	highlight Comment ctermfg=114 cterm=NONE
	highlight Constant ctermfg=210 cterm=NONE
	highlight Identifier ctermfg=117 cterm=NONE
	highlight Function ctermfg=117 cterm=NONE
	highlight Statement ctermfg=186 cterm=bold
	highlight PreProc ctermfg=211 cterm=NONE
	highlight Type ctermfg=215 cterm=bold
	highlight Special ctermfg=122 cterm=NONE
	highlight Ignore ctermfg=241 cterm=NONE
	highlight Todo ctermfg=202 ctermbg=226 cterm=NONE

	if exists("g:desertEx_statusLineColor")
		highlight User1 ctermfg=234 ctermbg=178 cterm=bold
		highlight User2 ctermfg=248 ctermbg=239 cterm=bold
		highlight User3 ctermfg=234 ctermbg=243 cterm=bold
		highlight User4 ctermfg=234 ctermbg=249 cterm=bold
		highlight User5 ctermfg=234 ctermbg=254 cterm=bold
	endif

elseif	&t_Co == 8		"under 8-color term
	"use default
	if exists("g:desertEx_statusLineColor")
		highlight User1 ctermfg=white ctermbg=brown
		highlight User2 ctermfg=black ctermbg=gray
		highlight User3 ctermfg=black ctermbg=gray
		highlight User4 ctermfg=black ctermbg=gray
		highlight User5 ctermfg=black ctermbg=gray
	endif
endif


" status line example
"set statusline=
"set statusline+=%1* "switch to User1 highlight
"set statusline+=%{getcwd()}\ > "current working dir
"set statusline+=%#ErrorMsg#
"set statusline+=%m
"set statusline+=%2* "hi user2
"set statusline+=\ %F "relative path
"set statusline+=%= "split left and right
"set statusline+=%3*
"set statusline+=\ %{&ft}:%{&ff}:%{&fenc} "file encoding
"set statusline+=%4*
"set statusline+=\ U+%B "value of byte under cursor
"set statusline+=%5*
"set statusline+=\ %P "line percentage in file
"set statusline+=%< "truncate
