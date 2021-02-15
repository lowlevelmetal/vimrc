"" Vim RC
"" HC CR

"" Fetch plugins
call plug#begin('~/.vim/plugged')

" coc - Used for code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Nerd Tree - Used for source tree navigation
Plug 'preservim/nerdtree'

call plug#end()

" " Coc configuration
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
"
" " Give more space for displaying messages.
set cmdheight=2
"
" " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" " delays and poor user experience.
set updatetime=300
"
" " Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Leader key set to " "
let mapleader=" "

" Tab configuration
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

"" Nerd Tree configuration
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"" Indent Configuration
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


