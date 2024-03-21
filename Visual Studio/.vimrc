:set ignorecase
:set smartcase
:let mapleader = " "

nmap <leader>e :vsc View.SolutionExplorer<CR>
nnoremap <leader>h :vsc Window.PreviousDocumentWindow<CR>
xnoremap <leader>h :vsc Window.PreviousDocumentWindow<CR>
nnoremap <leader>l :vsc Window.NextDocumentWindow<CR>
xnoremap <leader>l :vsc Window.NextDocumentWindow<CR>

nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
nmap <leader>v :vsplit<cr>
nmap <leader>s :split<cr>