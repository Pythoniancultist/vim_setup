call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'lifepillar/vim-solarized8'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'tomtom/tcomment_vim'
Plug 'vim-scripts/vim-auto-save'
Plug 'kshenoy/vim-signature'
Plug 'jiangmiao/auto-pairs'
Plug 'chrisbra/csv.vim'
Plug 'kien/ctrlp.vim'

call plug#end()

"AutoSave Enable
let g:auto_save = 1

"Open NERDTree at start
autocmd vimenter * NERDTree

"Easier navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Number lines
set nu

"Enable Deoplete
let g:deoplete#enable_at_startup = 1

"Let ALE stay on all times
let g:ale_sign_column_always = 1

"Colorscheme
set background=dark
colorscheme solarized8

"Close Deoplete preview window
set completeopt-=preview

"Vim Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_buffers = 0

"No swapfiles
set noswapfile

"Mouse integration
set mouse=a

"Vim Autosave
let g:auto_save = 1 
let g:auto_save_in_insert_mode = 0 
let g:auto_save_silent = 1
