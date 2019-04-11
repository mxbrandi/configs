" BASIC SETUP
" -----------
set nocompatible      " use vim, no vi defaults
set number            " show line numbers
set ruler             " show line and column number
set modeline          " enable evaluation of modeline
syntax enable         " turn on syntax highlighting allowing local overrides
set encoding=utf-8    " set default encoding to UTF-8
" set cm=blowfish2      " set default encryption method
set report=0          " tell us when any line is changed via : commands
set shortmess+=O      " shortens messages to avoid 'press a key' prompt
set cmdheight=1       " number of screen lines to use for the command-line
set noerrorbells      " don't make noise on error messages
set novisualbell      " don't blink

" VISUAL
" ------
set showmatch         " show matching brackets for a moment
set showmode          " show INSERT/REPLACE/...
set matchtime=3       " how many tenths of a second to blink matching brackets for

" THEME | COLORS
" --------------
"set background=dark   " we are using a dark background
"colorscheme desert    " load color scheme from ~/.vim/colors
"if &t_Co == 256
"   colorscheme Tomorrow-Night
"endif
colorscheme darkblue 

" WHITESPACE
" ----------
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set softtabstop=2                 " makes the spaces feel like real tabs
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
" fancy list chars:
set listchars=""                  " reset the listchars
set listchars=tab:\ \             " a tab should display as "  "
set listchars+=trail:·            " show trailing whitespaces as "·"
set listchars=eol:¬               " fancy end of line char
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen

" SEARCHING
" ---------
set hlsearch    " do highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

" BACKUP AND SWAP FILES
" ---------------------

" Persistent undo
silent !mkdir -p ~/.vim/undodir
set undofile             " activate persistent undo
set undodir=~/.vim/undodir " where to put global undo files

" GENERAL HELP
" ------------
" Open :help in new tab instead of split window
:cabbrev help tab help

" VIMDIFF
" -------
" Let vimdiff ignore white spaces
if &diff
  set diffopt+=iwhite
endif

" MAPPINGS
" --------
" toggle paste mode
nmap <F1> :set invpaste<CR>:set paste?<CR>
imap <F1> <ESC>:set invpaste<CR>:set paste?<CR>
" toggle line numbers
nmap <F2> :set invnumber number?<CR>
" toggle display of tabs, EOL, line continuation and spaces:
nmap <F3> :set invlist list?<CR>
" hilight current line and collumn (ALT+h)
nnoremap  :set cursorline! cursorcolumn!<CR>
" execute content as bash script
map <F5> :w<CR> :!bash %<CR>

" AUTOCMDS
" --------
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" CUSTOM ADDITIONS
" ----------------
filetype plugin on
set autoindent
set smartindent

