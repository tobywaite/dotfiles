" Configure Plugins!

" Encodings
scriptencoding utf-8
set encoding=utf-8

" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Solarized
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"

" Syntastic
let g:syntastic_auto_loc_list=1

" CtrlP
set wildignore+=*.pyc,*templates/*.py* "ignore compiled python & templets
set wildignore+=.*,*.log,*.swp "ignore logs and system files
set wildignore+=*.jpg,*.png,*.xpm,*.gif "ignore images

let g:ctrlp_map='<C-t>'

" Powerline
set runtimepath+=/nail/home/toby/.local/lib/python2.6/site-packages/powerline/bindings/vim
set laststatus=2
set noshowmode
let g:Powerline_theme='short'
let g:Powerline_colorscheme='solarized256'

" Fugitive
map <leader>gb :Gblame<CR>

" Sane defaults

set backspace=indent,eol,start
set number "Show line numbers
set textwidth=0 "Shut off max textwidth

" Tabs
set autoindent "Indent the next line automatically
set noexpandtab "Don't replace tabs with spaces
set shiftwidth=4
set tabstop=4
filetype indent on

" Search
set ignorecase
set incsearch "Show matchs as you search
set hlsearch "Highlight all matches to search

" whitespace
set list " Indicate whitespace as follows:
set listchars=tab:\ \ 
set listchars+=trail:·
set listchars+=trail:·
set listchars+=extends:>
set listchars+=precedes:<
set nowrap " Don't wrap lines.

" Underline the CursorLine
set cursorline
highlight CursorLine term=underline cterm=underline ctermbg=none

" Persistant undo
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" Jedi Config (python stuff) https://github.com/davidhalter/jedi-vim
let g:jedi#use_tabs_not_buffers = 0

" let g:jedi#goto_assignments_command = "<leader>g"
" let g:jedi#goto_definitions_command = "<leader>d"
" let g:jedi#documentation_command = "K"
" let g:jedi#usages_command = "<leader>n"
" let g:jedi#rename_command = "<leader>r"
" let g:jedi#show_call_signatures = "1"

let g:jedi#completions_command = "<S-Space>"


" Additional Personalizations

" Map <leader-i> to insert a ipdb breakpoint
map <leader>i Iimport ipdb; ipdb.set_trace()<CR><Esc>

"CTags
set tags=./tags;/
" Map the F2 key to search for the tag under the current cursor
map <F2> <Esc>g]
" Map the F3 key to pop the tags stack
map <F3> <Esc>:pop<CR>

