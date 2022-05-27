call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'joshdick/onedark.vim'
Plug 'vim-scripts/tabula.vim'

call plug#end()

runtime! ftplugin/man.vim

set background=light
colorscheme PaperColor

set number relativenumber ruler cursorline
set colorcolumn=110
set showmode showcmd laststatus=2
set list listchars=tab:>\ ,trail:.
set signcolumn=number
set scrolloff=3

set autoindent expandtab tabstop=4 softtabstop=4 shiftwidth=4
set backspace=start,eol,indent

set ignorecase smartcase hlsearch incsearch

set encoding=utf-8 fileencoding=utf-8
set nobackup nowritebackup
set hidden

set belloff=all mouse-=a

set noesckeys timeoutlen=300

nnoremap <silent> <Leader><Tab> :set invexpandtab<CR>
nnoremap <silent> <Leader><Return> :noh<CR>

nnoremap <silent> <Leader>N <Plug>(coc-diagnostic-prev)
nnoremap <silent> <Leader>n <Plug>(coc-diagnostic-next)

let g:netrw_liststyle=3

augroup FileTypes
	autocmd!

	" ASM 68k
	" autocmd BufNewFile,BufReadPre *.asm set filetype=asm68k
augroup END
