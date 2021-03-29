call plug#begin("~/.config/nvim/plugged")
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-rails'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-commentary'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'morhetz/gruvbox'
call plug#end()

let mapleader = "\<Space>"

nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>p :GFiles<CR>
nnoremap <silent> <Leader>a :Files<CR>

set number                     " Show current line number
set relativenumber             " Show relative line numbers

autocmd vimenter * ++nested colorscheme gruvbox
