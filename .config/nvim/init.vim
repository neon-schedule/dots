set nu
set guifont=FiraCode\ Nerd\ Font\ 24
set nocompatible
set cursorline
set termguicolors

let mapleader="\\"

function! Preview()
        execute "! pandoc % -s -o /tmp/op.pdf"
        execute "! zathura /tmp/op.pdf &"
endfunction

noremap <leader>p :call Preview()<CR><CR><CR>

autocmd FileType markdown nmap <buffer><silent> <leader>i :call mdip#MarkdownClipboardImage()<CR>
let g:mdip_imgdir = '.img'

let g:vim_markdown_folding_disabled = 1

syntax on

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'ferrine/md-img-paste.vim'
Plug 'dhruvasagar/vim-table-mode'

call plug#end()

let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_contrast_light = 'medium'

" set color sheme contrast
" https://github.com/morhetz/gruvbox/wiki/Configuration#ggruvbox_contrast_dark
colorscheme gruvbox

set background=dark

" set transparency
" highlight Normal guibg=none
hi Normal ctermbg=NONE guibg=NONE
