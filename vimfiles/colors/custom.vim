" Vim color file
" Maintainer: Dragon qiu <qqmmgg123@gmail.com>
" Last Change: 2015 Oct 30

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif
let g:colors_name = "custom"

hi clear

hi Normal         ctermfg=LightGrey guibg=#F7F7F7 guifg=#333333
hi operator       guifg=#666666 gui=bold ctermfg=lightRed ctermbg=darkBlue
hi Search         ctermfg=gray ctermbg=Red cterm=bold guifg=gray guibg=Red
hi IncSearch      ctermbg=red ctermfg=black cterm=NONE guifg=red guibg=black
hi Visual         cterm=reverse guifg=#303030 guibg=LightGray
hi Cursor         ctermfg=Black ctermbg=Green cterm=bold guifg=black guibg=#61FFCF
hi Special        ctermfg=Brown guifg=#CF7520
hi Comment        ctermfg=Gray guifg=#969896 guibg=#F7F7F7 gui=NONE
hi StatusLine     cterm=bold gui=NONE ctermfg=green ctermbg=gray guifg=green guibg=#0000AF
hi StatusLineNC   ctermfg=black ctermbg=white cterm=NONE
hi User1          ctermfg=grey ctermbg=gray cterm=bold
hi VertSplit      gui=none guifg=#333333 guibg=gray75 ctermfg=gray ctermbg=gray
hi Statement      ctermfg=gray cterm=bold gui=none guifg=gray
hi vimCommand     ctermfg=gray ctermbg=black cterm=NONE guifg=#CF7520
hi Type           cterm=NONE gui=NONE guifg=#00AB00
hi Identifier     cterm=NONE ctermfg=gray guifg=#666666
hi NonText        guifg=#7A90FF
hi Folded         term=standout cterm=bold ctermfg=6 ctermbg=0 guifg=#CCCCCC guibg=#999999
hi FoldColumn     guibg=gray75  guifg=black ctermbg=gray ctermfg=black
hi PreProc        term=underline cterm=bold ctermfg=Gray guifg=#7A90FF
hi Todo           term=standout ctermfg=0 ctermbg=3 guifg=black guibg=#CF7520
hi LineNr         ctermfg=grey guifg=#666666
hi String         guifg=#183691 guibg=#F7F7F7
