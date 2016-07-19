set nocompatible
set number
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set copyindent
set cindent
set laststatus=2
set list
set listchars=tab:›—,trail:␣,extends:▶,precedes:◀
set cinkeys=0{,0},0),o,O,!^F
set cino=g0,Ls,N-s,(s,U1,m1,j1,J1,#1,l1
set mouse=a
set nowrap
set colorcolumn=+1
set showcmd
set hlsearch
set nrformats=octal,hex,alpha
set updatetime=500
set timeoutlen=300
set ttimeoutlen=50
set foldmethod=marker
set history=200
set viminfo='100,s10,h,%
set guioptions=ac
set magic " magic mode for regexes
set so=7 " j/k scroll 7 lines
set wildmenu " nice menu when invoking command-completion
" Disable backing up
set nobackup
set nowb
set noswapfile
set background=dark
set modeline
set modelines=5
let g:c_no_curly_error=1

hi CursorLine   cterm=underline ctermbg=none ctermfg=none
hi CursorColumn cterm=underline ctermbg=none ctermfg=none
set cursorcolumn
set cursorline

nnoremap K i<Cr><Esc>
nmap <Leader>o VaBJds{
nmap <Leader>b i{<Cr><Esc>o}<Esc>k^
noremap <MiddleMouse> <Nop>
inoremap <MiddleMouse> <Nop>

syntax on
filetype off

filetype plugin on
filetype indent on

" Protect large files from sourcing and other overhead.
" Files become read only
if !exists("my_auto_commands_loaded")
	let my_auto_commands_loaded = 1
	" Large files are > 10M
	" Set options:
	" eventignore+=FileType (no syntax highlighting etc
	" assumes FileType always on)
	" noswapfile (save copy of file)
	" bufhidden=unload (save memory when other file is viewed)
	" buftype=nowritefile (is read-only)
	" undolevels=-1 (no undo possible)
	let g:LargeFile = 1024 * 1024 * 10
	augroup LargeFile
		autocmd BufReadPre * let f=expand("<afile>") | if getfsize(f) > g:LargeFile | set eventignore+=FileType | setlocal bufhidden=unload undolevels=-1 | endif
	augroup END
endif

if filereadable($HOME . "/.vimrc.local")
	source ~/.vimrc.local
endif
