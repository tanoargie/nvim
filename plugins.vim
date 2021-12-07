call plug#begin("~/.config/nvim/plugged")
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-rails'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-commentary'
    Plug 'idanarye/vim-merginal'
	Plug 'tpope/vim-dispatch'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'morhetz/gruvbox'
	Plug 'vim-airline/vim-airline'
	Plug 'Raimondi/delimitMate'
	Plug 'vim-scripts/BufOnly.vim'
    Plug 'chr4/nginx.vim'
	Plug 'vim-ruby/vim-ruby'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'honza/vim-snippets'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'tpope/vim-endwise'
    Plug 'vim-test/vim-test'
    Plug 'segeljakt/vim-silicon'
    Plug 'jparise/vim-graphql'
    Plug 'rust-lang/rust.vim'
    Plug 'digitaltoad/vim-pug'
call plug#end()
