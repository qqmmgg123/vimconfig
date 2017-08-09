source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

" encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,gb18030,big5,euc-jp,euc-kr,latin1

if has("win32")
    "解决菜单乱码
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    " 解决consle输出乱码
    language messages zh_CN.utf-8
endif

" editor
set number
set list
set listchars=tab:>-,trail:-
set ts=4
set expandtab

" fonts
if has("win32")
    set guifont=Courier_New:h12
elseif has("mac")
    set guifont=Andale\ Mono:h14
endif

filetype plugin indent on

" colorscheme
colorscheme custom

" backspace
set backspace=indent,eol,start

" indent
set sw=4

""""""""""""""""""""""""""""""
" Vundle config
""""""""""""""""""""""""""""""

set rtp+=%USERPROFILE%/vimfiles/bundle/Vundle.vim/
call vundle#begin('C:\')

" let Vundle manage Vundle, required
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'justinj/vim-react-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'darthmall/vim-vue'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shutnik/jshint2.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'mattn/vim-metarw-gdrive'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

""""""""""""""""""""""""""""""
" netrw setting
""""""""""""""""""""""""""""""
let g:netrw_winsize = 30
nmap <silent> <leader>fe :Sexplore!<cr>

" nerdtree
autocmd vimenter * NERDTree

" jsx
let g:jsx_ext_required = 0

" eslint
" let g:syntastic_javascript_checkers = ['standard']
" let g:syntastic_javascript_standard_generic = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint'

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set foldmethod=indent
set nobackup
set nowritebackup 
set noswapfile
set noundofile

nmap [ :s/^ \{2\}//<cr>
nmap ] :s/^/  /<cr>
nmap <F8> :TagbarToggle<CR>
nmap <F5> :NERDTreeToggle<cr>

