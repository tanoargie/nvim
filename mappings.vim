" Mapping for explorer
nnoremap <silent> <Leader>e :Exp<CR>

" PLUGIN: VIM-TEST
if has('nvim')
  tmap <C-o> <C-\><C-n>
endif

nnoremap <silent> <Leader>tn :TestNearest<CR>
nnoremap <silent> <Leader>tf :TestFile<CR>
nnoremap <silent> <Leader>ts :TestSuite<CR>
nnoremap <silent> <Leader>tl :TestLast<CR>
nnoremap <silent> <Leader>tv :TestVisit<CR>

" PLUGIN: BufOnly
nnoremap <silent> <Leader>bo :BufOnly<CR>

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

" PLUGIN: COC

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ functions#check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call functions#show_documentation()<CR>

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
