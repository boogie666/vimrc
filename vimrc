set tags=./tags;   
syntax on




filetype plugin indent on
" font settings
set guifont=Menlo:h13
set shiftwidth=2
set tabstop=2
set expandtab
set backspace=indent,eol,start

" Syntastic
let g:syntastic_javascript_checkers = ['jshint']
      
"number toggle
function! NumberToggle()
	if(&relativenumber == 1)
		set norelativenumber
		set number
	else
		set nonumber
		set relativenumber
	endif
endfunc

nmap <F11> :call NumberToggle()<CR>
set relativenumber

autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS


" NERD Tree
nmap <F10> :NERDTreeToggle<CR>

" color scheme
let &t_Co=256
set t_ut=
set background=dark
let g:solarized_termcolors=256
colorscheme solarized 

" rainbow parentz
au FileType clojure RainbowParenthesesActivate
au Syntax clojure RainbowParenthesesLoadRound
au Syntax clojure RainbowParenthesesLoadSquare
au Syntax clojure RainbowParenthesesLoadBraces

" open NERDTree on vim start

autocmd BufEnter * lcd %:p:h

" panel navigation
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

nmap <C-up> dd2kp
nmap <C-down> ddp0
vmap <C-up> :m '<-2<CR>gv=gv
vmap <C-down> :m '>+1<CR>gv=gv

