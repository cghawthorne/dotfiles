" Necessary  for lots of cool vim things
set nocompatible

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>k
nnoremap <silent> zk O<Esc>j

" This shows what you are typing as a command.  I love this!
set showcmd

" Automatically cd into the directory that the file is in
" autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

set incsearch
set autoindent
set ignorecase
set smartcase
set hlsearch

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
filetype indent on
syntax on

" Use english for spellchecking
if version >= 700
    set spl=en spell
    set spell
endif

if has("gui_running")
  " Remove Toolbar
  set guioptions-=T
  colorscheme murphy
endif

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" Enable mouse support in console
set mouse=a

" When I close a tab, remove the buffer
set nohidden

" Show matching brackets
set showmatch

" save before :make
set autowrite

"Status line gnarliness
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" Paste Mode!  Dang! <F10>
nnoremap <silent> <F10> :call Paste_on_off()<CR>
set pastetoggle=<F10>

let paste_mode = 0 " 0 = normal, 1 = paste

func! Paste_on_off()
        if g:paste_mode == 0
                set paste
                let g:paste_mode = 1
        else
                set nopaste
                let g:paste_mode = 0
        endif
        return
endfunc

" keep 5 lines of context
set scrolloff=5

" location specific settings
source ~/.vimrc.local

" Swap ; and :  Convenient.
nnoremap ; :
nnoremap : ;

" tabs display as 2 spaces for go
au FileType go setl ts=4 sw=4 noet sts=4
