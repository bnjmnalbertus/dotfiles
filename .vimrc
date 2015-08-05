execute pathogen#infect()

"How it looks
set number
syntax on
set fillchars="vert:"
set laststatus=2
set statusline=%t\ %m%r%y%=\(%l\,%c\)\ %p%%

"Tab and movement stuff
set scrolloff=2 "leave a gap between cursor and top or bottom of screen
set nostartofline "prevent implicit movement to the beginning of a line
set backspace=indent,eol,start
set tabstop=3
set shiftwidth=3
set expandtab
set smartindent
set foldmethod=indent
set foldminlines=3
set foldlevelstart=99

"Key mappings
let mapleader=","
map <C-B> :buffers<CR>:buffer
set tags=./tags;/
map <Leader>] :vs<CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <Space> <C-W>
nnoremap <CR> za
nnoremap t :tabnew 
map <Leader>t :ConqueTerm bash
