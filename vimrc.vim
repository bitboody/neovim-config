" Some notes:
" :call coc#util#install()
" Font used: Fira NF

:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set termguicolors
:set ve+=onemore
:set nowrap
:set completeopt-=preview 
:set hlsearch 
vnoremap <C-c> "*y
" :set clipboard+=unnamedplus
:command NT bot new | terminal 
:au BufEnter *.js :setlocal tabstop=2 
:au BufEnter *.js :set shiftwidth=2 shiftwidth=2
:au BufEnter *.ts :setlocal tabstop=2 
:au BufEnter *.ts :set shiftwidth=2 shiftwidth=2
:au BufEnter *.css :setlocal tabstop=2 
:au BufEnter *.css :set shiftwidth=2 shiftwidth=2
:filetype indent on

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

let mapleader = " "

let g:easymotion_do_mapping = 0 " disable default mappings

nmap s <plug>(easymotion-overwin-f)
nmap s <plug>(easymotion-overwin-f2)

let g:easymotion_smartcase = 1

map <leader>j <plug>(easymotion-j)
map <leader>k <plug>(easymotion-k)

map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

inoremap <c-h> <c-o>h
inoremap <c-j> <c-o>j
inoremap <c-k> <c-o>k
inoremap <c-l> <c-o>l

nnoremap <a-j> :m .+1<cr>==
nnoremap <a-k> :m .-2<cr>==
inoremap <a-j> <esc>:m .+1<cr>==gi
vnoremap <a-j> :m '>+1<cr>gv=gv
inoremap <a-k> <esc>:m .-2<cr>==gi
vnoremap <a-k> :m '<-2<cr>gv=gv

inoremap jj <esc>

tnoremap jj <c-\><c-n>
tnoremap <esc> <c-\><c-n>

imap <C-Enter> <Esc>o

:nmap <a-M> :vertical res +1<enter>
:nmap <a-?> :vertical res -1<enter>
:nmap <a-m> :res +1<enter>
:nmap <a-/> :res -1<enter>

nnoremap <s-k> <c-u>k
nnoremap <s-j> <c-d>j
vnoremap <s-k> <c-u>k
vnoremap <s-j> <c-d>j

nnoremap <s-l> <s-$>
nnoremap <s-h> <s-^>

inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<c-g>u\<tab>"
inoremap <silent><expr> <cr> "\<c-g>u\<cr>"

nmap <silent><leader>rn <Plug>(coc-rename)

nnoremap ; ci
nnoremap <A-;> ci"

nnoremap <silent> <leader>lg :LazyGit<CR>
