call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/everforest'
Plug 'vim-scripts/tabula.vim'

call plug#end()

runtime! ftplugin/man.vim

" Colors
set background=dark
set termguicolors
colorscheme onedark

" Visual
set number relativenumber
set signcolumn=number
set ruler
set colorcolumn=80
set cursorline
set laststatus=2
set showmode showcmd
set list listchars=tab:>\ ,space:.
set belloff=all

" Editing
set autoindent expandtab tabstop=4 softtabstop=4 shiftwidth=4
set backspace=start,eol,indent
set ignorecase smartcase
set scrolloff=3
set noesckeys
set timeoutlen=450
set mouse-=a

" File
set encoding=utf-8 fileencoding=utf-8
set nobackup nowritebackup

" Buffer
set hidden

" Mappings
nnoremap <Leader><Tab> :set invexpandtab<CR>:set expandtab?<CR>
nnoremap <silent> <Leader>N <Plug>(coc-diagnostic-prev)
nnoremap <silent> <Leader>n <Plug>(coc-diagnostic-next)

" ClangFormat
function! Formatonsave()
	let l:formatdiff = 1
	pyf /usr/share/clang/clang-format-10/clang-format.py
endfunction

augroup SaveActions
	autocmd!

	" trim trailing whitespaces
	autocmd BufWritePre * %s/\s\+$//e

	" ClangFormat
	" autocmd BufWritePre *.c,*.h,*.cpp call Formatonsave()
augroup END

augroup FileTypes
	autocmd!

	" ASM 68k
	" autocmd BufNewFile,BufReadPre *.asm set filetype=asm68k
augroup END
