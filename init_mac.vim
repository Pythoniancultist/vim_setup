let mapleader="\<Space>"


call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'tomtom/tcomment_vim'
Plug 'vim-scripts/vim-auto-save'
Plug 'kshenoy/vim-signature'
Plug 'jiangmiao/auto-pairs'
Plug 'chrisbra/csv.vim'
Plug 'kien/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }



"Colorschemes
Plug 'junegunn/seoul256.vim'
Plug 'lifepillar/vim-solarized8'


call plug#end()

set foldmethod=manual
let g:jedi#force_py_version = 3
let g:jedi#auto_vim_configuration = 0
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#show_call_signatures = 0

" Use deoplete.
let g:deoplete#enable_at_startup = 1

"Open NERDTree at start
autocmd vimenter * NERDTree


"Easier navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Number lines
set nu




"Let ALE stay on all times
let g:ale_sign_column_always = 1

"Colorscheme Solarized8
"set background=dark
"colorscheme solarized8
"highlight Comment ctermfg=65a071

"Colorscheme Seoul256
let g:seoul256_background = 237
colo seoul256
highlight Comment ctermfg=65a071

"WorldTree
let g:indentLine_color_term = 241
let g:indentLine_char = '┆'


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

"Highlighting
:nnoremap <silent> <Leader>l :exe "let m = matchadd('WildMenu','\\%" . line('.') . "l')"<CR>
:nnoremap <silent> <Leader><CR> :call clearmatches()<CR>
