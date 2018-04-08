" Plugins
call plug#begin('~/.local/share/nvim/plugins')

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'

Plug 'airblade/vim-gitgutter'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plug 'terryma/vim-multiple-cursors'

Plug 'editorconfig/editorconfig-vim', { 'tag': 'v*.*' }

Plug 'w0rp/ale', { 'tag': 'v*.*' }
Plug 'autozimu/LanguageClient-neovim', {
            \ 'tag': 'binary-*-x86_64-unknown-linux-musl',
            \ 'do': ':UpdateRemotePlugins'
            \ }

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'baabelfish/nvim-nim', { 'for': 'nim' }

Plug 'sheerun/vim-polyglot', { 'tag': 'v*.*' }

Plug 'zchee/deoplete-jedi', { 'for': 'python' }

Plug 'lervag/vimtex', { 'for': 'tex' }

Plug 'cjrh/vim-conda', { 'for': 'python' }

Plug 'edkolev/promptline.vim'
" Plug 'edkolev/tmuxline.vim'

Plug 'Raimondi/delimitMate'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug '$HOME/.fzf'
Plug 'junegunn/fzf.vim'

Plug 'chriskempson/base16-vim'

Plug 'fidian/hexmode'

call plug#end()

set number            " Turn on line numbers
set relativenumber    " Turn on relative line numbers
set tabstop=4         " number of visual spaces per tab
set softtabstop=4     " number of spaces in tab when editing
set shiftwidth=4
set expandtab         " tabs are spaces
set showcmd           " shows last command at the bottom
set cursorline        " highlights current line
set showmatch         " highlight matching [{()}]
set hlsearch          " highlight matches
set clipboard=unnamed " Use the OS clipboard by default (on versions compiled with `+clipboard`)
set foldmethod=syntax " Turn on folds using syntax-defined folding
set splitbelow        " Splits open below instead of above
set splitright        " Vsplits open on the right instead of the left
set mouse=a           " Enable mouse scrolling and movement in all modes
set termguicolors     " True color mode
set hidden

" Set the color scheme
colorscheme base16-tomorrow-night
" colorscheme Tomorrow-Night

let mapleader = "\<SPACE>"
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>t :Tags<CR>

inoremap <c-j> <c-n>
inoremap <c-k> <c-p>

nnoremap <m-h> <c-w>h
nnoremap <m-j> <c-w>j
nnoremap <m-k> <c-w>k
nnoremap <m-l> <c-w>l

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" let g:python_host_pro='/usr/bin/python2'
let g:jedi#force_py_version = 2
let g:UltisnipsUsePythonVersion = 2
