source ~/.config/nvim/plugins.vim
source ~/.config/nvim/variables.vim
source ~/.config/nvim/mappings.vim

set number			" Show current line number
set relativenumber		" Show relative line numbers
set hidden			" Allow to open new buffers if not saved current
set clipboard+=unnamedplus	" Allow to copy to system's clipboard
set autoindent 			" Keep indentation from previous line
set smartindent 		" Automatically inserts indentation
set expandtab
set tabstop=4
set shiftwidth=4
set noswapfile 			" Disable swap files

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --hidden --column -g "!.git" --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

autocmd vimenter * ++nested colorscheme gruvbox
