" Mapping for explorer
nnoremap <silent> <Leader>e :Exp<CR>

" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" replace currently selected text with default register
" without yanking it
vnoremap <leader>p "_dP

" PLUGIN: VIM-TEST
if has('nvim')
  tmap <C-o> <C-\><C-n>
endif

" Delete all buffers except current one
nnoremap <silent> <Leader>ca :%bd\|e#\|bd#<CR>

" Delete buffer without losing split window
nnoremap <silent> <Leader>cs :bn\|bd #<CR>

nnoremap <silent> <Leader>tn :TestNearest<CR>
nnoremap <silent> <Leader>tf :TestFile<CR>
nnoremap <silent> <Leader>ts :TestSuite<CR>
nnoremap <silent> <Leader>tl :TestLast<CR>
nnoremap <silent> <Leader>tv :TestVisit<CR>

" PLUGIN: MARKDOWN-PREVIEW
nnoremap <silent> <Leader>m :MarkdownPreview<CR>
nnoremap <silent> <Leader>ms :MarkdownPreviewStop<CR>
nnoremap <silent> <Leader>mt :MarkdownPreviewToggle<CR>

" PLUGIN: FZF
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>p :Files<CR>
nnoremap <silent> <Leader>o :GFiles<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR> 

" PLUGIN: VIM-FUGITIVE
nnoremap <Leader>ga :Git add %:p<CR><CR>
nnoremap <Leader>gal :Git add .<CR><CR>
nnoremap <Leader>gs :Git<CR>
nnoremap <Leader>gc :Git commit -v -q<CR>
nnoremap <Leader>gt :Git commit -v -q %:p<CR>
nnoremap <Leader>gca :Git commit --amend<CR>
nnoremap <Leader>gd :Gvdiff<CR>
nnoremap <Leader>ge :Gedit<CR>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gw :Gwrite<CR><CR>
nnoremap <Leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <Leader>gp :Ggrep<Space>
nnoremap <Leader>gm :Gmove<Space>
nnoremap <Leader>gb :Git branch<Space>
nnoremap <Leader>go :Git checkout<Space>
nnoremap <Leader>gps :Dispatch! git push<CR>
nnoremap <Leader>gpf :Dispatch! git push -f<CR>
nnoremap <Leader>gpl :Dispatch! git pull<CR>
nnoremap <Leader>gpd :Git -c push.default=current push<CR>

" BUFFERS
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

