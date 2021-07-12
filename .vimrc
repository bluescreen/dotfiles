
let mapleader = "\<Space>"
let test#strategy = "vimterminal"
imap ˙ <Left>
imap ∆ <Down>
imap ˚ <Up>
imap ¬ <Right>
"Key mapppings
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Up> <Nop>
noremap <Right> <Nop>

" Windows
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

nnoremap <silent> <Leader>+ :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

" Tabs
nnoremap tn :tabnew<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" Exit insert mode easy
inoremap kj <Esc>
" New line in insert mode
inoremap <C-k> <Esc>O<Esc>jA
" save and exit insert mode
noremap <C-s> <Esc>:w<CR><Esc>
" dupplicate line
noremap <C-d> yyp

inoremap <C-e> <C-o>
" Enable scroll in terminal
tnoremap <Esc><Esc> <C-\><C-n>
" nnoremap <C-Down> ddpk<CR>
" nnoremap <C-Up> ddkPk<CR>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

noremap <C-n> :NERDTreeToggle<CR>
noremap <C-t> :vert terminal<CR>

":nmap <c-R> :CtrlPBufTag<cr>
nmap <leader>ai mzgg=G`z
nmap <leader>rv :source ~/.vimrc<CR>

syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set colorcolumn=81
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set nu
set rnu
set nowrap
set smartcase
set noswapfile
set undodir=~/.vim/undodir
set undofile
set incsearch
set splitright
set splitbelow
set mouse=a
set cursorline
set colorcolumn=80
set nrformats-=octal
set tags=tags
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'airblade/vim-gitgutter'
Plug 'matze/vim-move'
Plug 'prabirshrestha/vim-lsp'
Plug 'mbbill/undotree'
Plug 'mattn/vim-lsp-settings'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
"Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'Valloric/YouCompleteMe'
Plug 'nrocco/vim-phplint'
Plug 'vim-test/vim-test'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'kshenoy/vim-signature'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/tagbar'
Plug 'ludovicchabant/vim-gutentags'
call plug#end()


let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|bower_components|vendor'

colorscheme gruvbox
set background=dark
" set termguicolors
highlight Cursor guifg=white guibg=black

highlight iCursor guifg=white guibg=steelblue
highlight lspReference ctermfg=red guifg=red ctermbg=green guibg=green

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE ctermfg=NONE
let g:netrw_winsize = 25
nnoremap <leader>u :UndoTreeShow<CR>
nmap <C-p> :Files<cr>
let g:indentLine_char       = '▏'
let g:indentLine_setConceal = 0
let NERDTreeShowHidden = 1 
let g:tagbar_autofocus = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_position = 'botright vertical'
nmap <F8> :TagbarToggle<CR>
