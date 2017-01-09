syntax enable
"color codeschool
"set guicolors
set background=dark
set t_Co=256
colorscheme wombat256mod
"colorscheme boa
"color molokai
"let g:molokai_original = 1
set guifont=Monaco:h12
let g:NERDTreeWinPos = "right"
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
:set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands

set number

filetype on
au BufNewFile,BufRead *.cu set ft=C
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set smarttab
set sts=4
set expandtab
set noswapfile
set showcmd
set cursorline
hi CursorLine   cterm=NONE ctermbg=8 ctermfg=NONE
set wildmenu
set lazyredraw

if exists('+colorcolumn')
    set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

"" Always show current position
set ruler

" Ignore case when searching
set ignorecase

"" When searching try to be smart about cases
set smartcase

" " Highlight search results
set hlsearch
"
" " Makes search act like search in modern browsers
set incsearch
"
" " For regular expressions turn magic on
set magic
"
" " Show matching bracketes when text indicator is over them
set showmatch
"
" " No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
"
" " Always show the status line
set laststatus=2
"
" " returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

  "copy to the osx clipboard
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
"
