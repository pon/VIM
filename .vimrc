" Pathogen
execute pathogen#infect()

" Syntax Highlighting On
syntax on

"Indent
filetype plugin indent on

" Better HTML/XML closing
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

"TagBar
nmap <F8> :TagbarToggle<CR>

"NERDTree
nmap <F9> :NERDTree<CR>

"Better Buffer Shorcuts
nmap <C-b> :bn<CR>
nmap <C-k> :bd<CR>

"No Swap Files
set noswapfile

"Tab Width
set tabstop=2
set shiftwidth=2
set expandtab
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif

"QuickTask
autocmd BufNewFile,BufRead *.quicktask setf quicktask
let g:quicktask_snip_path = '~/snips'

