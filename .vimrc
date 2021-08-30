set tabstop=4
set tabline=4
set shiftwidth=4
set number
set relativenumber
syntax on
nnoremap <F7> :tabp <Enter>
nnoremap <F8> :tabn <Enter>

call plug#begin('~/.vim/plugged')

"https://github.com/lervag/vimtex
Plug 'lervag/vimtex'

"https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree'

"https://github.com/instant-markdown/vim-instant-markdown
Plug 'instant-markdown/vim-instant-markdown'

"https://github.com/xavierd/clang_complete
Plug 'xavierd/clang_complete'

"https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

call plug#end()

"For instant-markdown
filetype plugin indent on
let g:instant_markdown_open_to_the_world = 1

autocmd vimenter * NERDTree
let g:NERDTreeWinSize = 25
map <C-n> :NERDTreeToggle<CR>

set foldmethod=marker foldmarker={,} foldlevel=2

"Tabs visualization
set list
set listchars=tab:>-,trail:·
hi SpecialKey ctermfg=240
"guifg=#B3B3B3


"For clang-complete
let g:clang_library_path='/usr/lib/llvm-10/lib'
set completeopt-=preview

"For latex preview
au FileType tex nnoremap<buffer><C-c> :!pdflatex %<CR>
