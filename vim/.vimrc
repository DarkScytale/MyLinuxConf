" Settings {{{

" Show incomplete commands
set showcmd

" Incremental searching (search as you type)
set incsearch

" Highlight search matches
set hlsearch

" Make sure any searches / searchPhrase doesn't need the \c escape character
set ignorecase

" A buffer is marked as `hidden' if it has unsaved changes, and it is not currently loaded in a window
" if you try and quit Vim while there are hidden buffers, you will raise an error:
" E162: No write since last change for buffer 'a.txt'
set hidden

" Turn word wrap off
set nowrap

" Allow backspace to delete end of line, indent and start of line characters
set backspace=indent,eol,start

" Set tab size in spaces (this is for manual indenting)
set tabstop=4

" The number of spaces inserted for a tab (used for auto indenting)
set shiftwidth=4

"Get rid of the delay when pressing O (for example)
" http://stackoverflow.com/questions/2158516/vim-delay-before-o-opens-a-new-line
set timeout timeoutlen=1000 ttimeoutlen=100

" Always show status bar
set laststatus=2

" Set the status line to something useful
set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)

" Hide the toolbar
set guioptions=-=T

" UTF encoding
set encoding=utf-8

" Autoload files that have changed outside of vim
set autoread

" Use system clipboard
" http://stackoverflow.com/questions/8134647/copy-and-paste-in-vim-via-keyboard-between-different-mac-terminals
set clipboard+=unnamed

" Don't show intro
set shortmess+=I

" Better splits (new windows appear below and to the right)
set splitbelow
set splitright

" Highlight the current line
set cursorline

" Ensure Vim doesn't beep at you every time you make a mistype
set visualbell

" Visual autocomplete for command menu (e.g. :e ~/path/to/file)
set wildmenu

" redraw only when we need to (i.e. don't redraw when executing a macro)
set lazyredraw

" highlight a matching [{()}] when cursor is placed on start/end character
set showmatch

" Set built-in file system explorer to use layout similar to the NERDTree plugin
let g:netrw_liststyle=3

" Always highlight column 80 so it's easier to see where
" cutoff appears on longer screens
autocmd BufWinEnter * highlight ColorColumn ctermbg=darkred
set colorcolumn=120
" }}}

" Plugins {{{
"execute pathogen#infect()
"filetype plugin indent on " required by Pathogen Plugin Manager

" Theme
"set background=dark
:color desert
"colorscheme Tomorrow-Night

" }}}
" AUTRE
setf py
au BufNewFile, BufRead *.po set filetype=py
setf xml
au BufNewFile, BufRead *.zxml set filetype=xml


" {{{
" -----------------------------------
" }}}
" -----------------------------------
" }}}

" CONFIGURATION GENERALE {{{
" -> Utilisation de l'API vim.
set nocompatible

" -> Pas de fichier de sauvegarde.
set nowritebackup

" -> Pas de fichier d'échange.
set noswapfile

" -> Colorisation syntaxique.
syntax on

" }}}

" CONFIGURATION DE L'AFFICHAGE {{{
" -> Affichage de la numérotation.
set number

" -> Affichage du curseur.
set ruler

" -> Affichage des invisibles.
set list
set listchars=tab:▸\ ,eol:¬,trail:·
" PROBLEME: Le caractere u25B8 ne 'fonctionne pas'
" NOTE: help listchars
" NOTE : Mettre set no expandtab
" }}}

" CONFIGURATION DE L'HISTORIQUE {{{
" -> Taille de l'historique.
set history=500
" }}}

" CONFIGURATION DE LA RECHERCHE {{{
" -> Recherche case not sensitive.
set smartcase
" }}}

" DEFINITION DES RACCOURCIS {{{
nmap <leader>l :set list!<CR>
nmap <leader>n :set number!<CR>¬
" }}}

" Colorisation {{{
" -> Texte invisible.
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
" }}}
