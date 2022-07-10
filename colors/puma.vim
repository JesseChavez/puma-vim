
set background=light

highlight clear

if exists("syntax_on")
  syntax reset
endif


let colors_name = "puma"

let s:bg_color_gui = "#151515"
let s:bg_color_ctr = "233"

fun! s:set_color_group(group, gui_fg, gui_bg, cterm_fg, cterm_bg, gui, cterm, gui_attr, gui_val)

endfun

" xterm 16  (7, 0) or (silver, black)
" xterm 256 (188, 233) or (grey 84, grey 7)
highlight Normal ctermfg=188 ctermbg=233 guifg=#e8e8d3 guibg=#151515
highlight LineNr ctermfg=59 ctermbg=233 guifg=#777777 guibg=#151515

" xterm 16 (2 or green), 256 (107 or Dark Olive Green 3)
highlight String ctermfg=107 guifg=#99ad6a

" xterm 16 (11 or yellow), 256 (222 or light goldenrod 2)
highlight Function ctermfg=222 guifg=#fad07a

" xterm 16 (12 or blue), 256 (103 or light slate grey)
highlight Statement ctermfg=103 gui=NONE guifg=#8197bf

" xterm 16 (14 or aqua), 256 (110 or light sky blue 3)
highlight PreProc ctermfg=110 guifg=#8fbfdc

" xterm 16 (11 or yellow), 256 (215 or sandy brown)
highlight Type ctermfg=215 gui=NONE guifg=#ffb964

" xterm 16 (1 or maroon), 256 (167 or indian red)
highlight Constant ctermfg=167 guifg=#cf6a4c

" xterm 16 (13 or fuchsia), 256 (183 or plum 2)
highlight Identifier ctermfg=183 guifg=#c6b6ee

" xterm 16 (8 or grey), 256 (244 or grey 50)
highlight Comment ctermfg=244 gui=italic guifg=#888888

" same as statement
" xterm 16 (12 or blue), 256 (103 or light slate grey)
highlight Keyword ctermfg=103 guifg=#8197bf

" same as statement
" xterm 16 (12 or blue), 256 (103 or light slate grey)
highlight Label ctermfg=103 guifg=#8197bf

" xterm 16 (6 or teal), 256 ( dark greenish )
highlight Special ctermfg=6 guifg=#799d6a

" ====================== details ================
" xterm 16 (15 or white), 256 ( 251 grey 85)
highlight CursorLineNr ctermfg=251 ctermbg=233 gui=NONE guifg=#dadada guibg=#090909

" this was link to warnings (ALE warning)
" xterm 16 (7 or silver), 256 ( 251 grey 85)
highlight Todo cterm=bold ctermfg=251 ctermbg=233 gui=bold guifg=#c7c7c7 guibg=#151515
" highlight ALEWarningSign cterm=bold ctermfg=251 ctermbg=11 gui=bold guifg=#ffff00 guibg=#151515
highlight ALEWarningSign cterm=NONE ctermfg=11 ctermbg=NONE gui=NONE guifg=#ffff00 guibg=NONE

" xterm 16 (9 or red), 256 ( 160 or red 1)
highlight Error ctermfg=160 ctermbg=233 guifg=#ff0000 guibg=#151515

" xterm 16 (11 or yellow), 256 (222 or light goldenrod 2)
highlight Directory ctermfg=222 guifg=#fad07a

" highlight SpellBad cterm=underline ctermbg=9 gui=undercurl guibg=#902020 guisp=Red
highlight SpellBad cterm=undercurl gui=undercurl guisp=Red

highlight Search cterm=underline ctermfg=0 ctermbg=11 gui=underline guifg=#f0a0c0 guibg=#302028

highlight ColorColumn ctermbg=1 guibg=#000000

" cursor in gnome terminal is opposite to the current character
" highlight Cursor guifg=#090909 guibg=#a0a0a0
" highlight Cursor cterm=reverse gui=reverse guifg=NONE guibg=NONE
highlight CursorLine guibg=#404040
highlight CursorColumn ctermbg=242 guibg=#1c1c1c

" styling for the vertical split separator
highlight VertSplit cterm=NONE gui=NONE ctermfg=59 ctermbg=233 guifg=#777777 guibg=#222222

" styling for the sign column (the one the linter uses to show signs)
highlight SignColumn ctermfg=59 ctermbg=233 guifg=#777777 guibg=#151515

" Vim diff in the column first-ish (the one to show git changes)
highlight DiffChange ctermfg=59 ctermbg=233 guifg=magenta guibg=#151515
highlight DiffAdd ctermfg=59 ctermbg=233 guifg=green guibg=#151515
highlight DiffDelete ctermfg=59 ctermbg=233 guifg=red guibg=#151515

" highlighting is visual mode
highlight Visual ctermbg=242 guibg=#404040

" auto complete menu
highlight Pmenu ctermfg=0 ctermbg=13 guifg=#ffffff guibg=#606060
highlight PmenuSel ctermfg=242 ctermbg=0 guifg=#101010 guibg=#eeeeee
highlight PmenuSbar ctermbg=248 guibg=Grey
highlight PmenuThumb ctermbg=15 guibg=White

" when you start Vim without file, buffer with ~ ~ ~
highlight NonText ctermfg=12 guifg=#606060 guibg=#151515

" ================== RUBY ====================
" xterm 16 (3 or olive), 256 (58 orange 4)
highlight StringDelimiter ctermfg=58 guifg=#556633

" xterm 16 (12 or blue), 256 (104 or medium purple)
highlight rubySymbol ctermfg=104 guifg=#7697d6

" xterm 16 (5 or purple), 256 (162 or deep pink 2)
highlight rubyRegexp ctermfg=162 guifg=#dd0093

" xterm 16 (5 or purple), 256 (53 or deep pink 4)
highlight rubyRegexpDelimiter ctermfg=53 guifg=#540063

" xterm 16 (5 or purple), 256 (126 or medium violet red)
highlight rubyRegexpSpecial ctermfg=126 guifg=#a40073

" ================== Coc ===================
" highlight CocUnderline cterm=undercurl gui=undercurl
highlight CocWarningHighlight cterm=undercurl gui=undercurl guisp=Orange
highlight CocErrorHighlight cterm=undercurl gui=undercurl guisp=Red
highlight CocInfoHighlight cterm=undercurl gui=undercurl guisp=Red

" ================== Ruby ===================
hi! link rubyAttribute PreProc

hi! link rubyStringDelimiter StringDelimiter

hi! link rubyInterpolationDelimiter Identifier

" =============== JavaScript =================
" xterm 16 (3 or olive), 256 (137 or light salmon 3 )
highlight StorageClass ctermfg=6 guifg=#c59f6f

" highlight jsFuncCall ctermfg=6 guifg=#ffd7af

hi! link jsFuncArgs Special
hi! link jsSuper Keyword
hi! link jsThis Constant
hi! link jsObjectKey rubySymbol
hi! link jsFunction Include
hi! link jsArrowFunction Include

" ============== TypeScript =================
hi! link typescriptIdentifier Constant
hi! link typescriptClassName Type
hi! link typescriptClassKeyword Define
hi! link typescriptFuncKeyword Define
hi! link typescriptCall Special
hi! link typescriptImport Include
hi! link typescriptRegexpString rubyRegexpSpecial

" ================== HTML ====================
hi! link htmlTag Statement
hi! link htmlEndTag htmlTag
hi! link htmlTagName htmlTag

" ================== XML ====================
highlight xmlTag ctermfg=183 guifg=#d787d7
hi! link xmlAttrib StorageClass
" hi! link xmlTag Identifier
hi! link xmlEndTag xmlTag
hi! link xmlTagName xmlTag
hi! link xmlEqual xmlTag
hi! link xmlEntity Special
hi! link xmlEntityPunct xmlEntity
hi! link xmlDocTypeDecl PreProc
hi! link xmlDocTypeKeyword PreProc
hi! link xmlProcessingDelim xmlAttrib

