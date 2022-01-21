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
"Plug 'instant-markdown/vim-instant-markdown'

"https://github.com/xavierd/clang_complete
Plug 'xavierd/clang_complete'

"https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

"https://github.com/mattn/emmet-vim
Plug 'mattn/emmet-vim'

"https://github.com/prabirshrestha/vim-lsp
"https://github.com/mattn/vim-lsp-settings
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

"https://github.com/othree/eregex.vim
"https://github.com/dkprice/vim-easygrep
Plug 'othree/eregex.vim'
Plug 'dkprice/vim-easygrep'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
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

"For emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"For vim-lsp
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
imap <c-space> <Plug>(asyncomplete_force_refresh)
noremap c<C-]> :LspDeclaration<CR>
noremap f<C-]> :LspDefinition<CR>
noremap r<C-]> :LspReferences<CR>

"For Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
