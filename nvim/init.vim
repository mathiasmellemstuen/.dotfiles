call plug#begin("~/Appdata/Local/nvim/plugged")

Plug 'tomasr/molokai'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" For LSP server 
" Use :LspInstallServer when editing file with a supported filetype to install
" servers. To uninstall use :LspUninstallServer server-name
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'chrisbra/changesPlugin'

Plug 'mathiasmellemstuen/commander'

call plug#end()

set relativenumber

"Enabling block cursor in insert mode
set guicursor=i:block

filetype plugin indent on
set tabstop=4
set shiftwidth=4

"Enabling syntax highlighting
syntax on

" Setting colorscheme
colorscheme molokai
let g:rehash256 = 1

" Sharing the same clipboard with the system
set clipboard=unnamed

set langmenu=en_US.UTF-8
language en_US.utf8

" Setting leader key to space key
nnoremap <Enter> <Nop>
let mapleader="\<Enter>"

noremap <leader>o <cmd>Telescope find_files<cr>
" Needs to have ripgrep installed on the system for this to work
noremap <leader>f <cmd>Telescope live_grep<cr>

" For quickly opening init.vim file.
noremap <leader>c <cmd>e $MYVIMRC<cr>

" Mapping for autocompletion with enter
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
" Mapping lsp commands
noremap <leader>e <cmd>LspNextError<cr>
noremap <leader>pe <cmd>LspPreviousError<cr>
noremap <leader>d <cmd>LspDeclaration<cr>

" Mapping for going back to previous buffer 
noremap <leader>b <cmd>bprev<cr>

" Mapping commander run
nnoremap <leader>1 <cmd>lua require"commander".run(1)<cr>
nnoremap <leader>2 <cmd>lua require"commander".run(2)<cr>
nnoremap <leader>3 <cmd>lua require"commander".run(3)<cr>

" Mapping commander edit
nnoremap <leader><del>1 <cmd>lua require"commander".edit(1)<cr>
nnoremap <leader><del>2 <cmd>lua require"commander".edit(2)<cr>
nnoremap <leader><del>3 <cmd>lua require"commander".edit(3)<cr>

nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

inoremap { {}<left><cr><cr><up>

let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

highlight clear LineNr

highlight Pmenu ctermbg=black guibg=black
highlight Pmenu ctermfg=red guibg=red

highlight Search guibg=red guifg=white
highlight Search cterm=None ctermbg=red ctermfg=white
