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
:set clipboard+=unnamedplus
:command TT bot new | terminal 
:au BufEnter *.js :setlocal tabstop=2 
:au BufEnter *.js :set shiftwidth=2 shiftwidth=2
:au BufEnter *.ts :setlocal tabstop=2 
:au BufEnter *.ts :set shiftwidth=2 shiftwidth=2
:au BufEnter *.css :setlocal tabstop=2 
:au BufEnter *.css :set shiftwidth=2 shiftwidth=2
:filetype indent on

let mapleader = " "

" Easy motion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

nmap s <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)

let g:EasyMotion_smartcase = 1

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Other mappings 
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-k> :m '<-2<CR>gv=gv

nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

inoremap jj <ESC>

tnoremap jj <C-\><C-n>
tnoremap <ESC> <C-\><C-n>

inoremap <C-Enter> <Esc>o
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

:nmap <Esc>> :vertical res +1<Enter>
:nmap <Esc>< :vertical res -1<Enter>
:nmap <A-?> :res +1<Enter>
:nmap <A-M> :res -1<Enter>

nnoremap <S-k> <C-u>k
nnoremap <S-j> <C-d>j

nnoremap <S-l> <S-$> 
nnoremap <S-h> <S-^> 

inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

nmap <silent><leader>rn <Plug>(coc-rename)

