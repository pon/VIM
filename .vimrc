" Pathogen
execute pathogen#infect()

" Syntax Highlighting On
syntax on

"Indent
filetype plugin indent on

"Line Numbers
set number

"TagBar
nmap <F8> :TagbarToggle<CR>

"NERDTree
nmap <F9> :NERDTree<CR>

"Better Buffer Shorcuts
nmap <C-b> :bn<CR>
nmap <C-k> :bd<CR>

"No Swap Files
set noswapfile

"Theme
set background=dark
set t_Co=256
colorscheme smyck

"Tab Width
set tabstop=2
set shiftwidth=2
set expandtab

"Remove Trailing Whitespace on Save
autocmd BufWritePre * :%s/\s\+$//e

"Airline Theme
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1

"Ctrlp Ignore
let g:ctrlp_custom_ignore = 'node_modules\'

"Highlight Over 80 Lines
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
