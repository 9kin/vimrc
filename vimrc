" vimrc 
" 
"
"
call plug#begin('~/.vim/plugged')
"project tree
Plug 'scrooloose/nerdtree', { 'off':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline' "statusbar
Plug 'vim-airline/vim-airline-themes' 
Plug 'morhetz/gruvbox' "themes
Plug 'junegunn/fzf' "search
Plug 'tell-k/vim-autopep8' "pep8 auto
Plug 'vim-syntastic/syntastic' "syntax for python use pylint
Plug 'majutsushi/tagbar' "browse variable





Plug 'sirver/ultisnips' "snippet
Plug 'honza/vim-snippets'


call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tag bar
" https://github.com/vim-scripts/Tagbar/blob/master/doc/tagbar.txt
let g:tagbar_left = 1
let g:tagbar_width = 30
let g:tagbar_sort = 1 "sort
let g:tagbar_compact = 1
let g:tagbar_indent = 2 "The number of spaces by which each level is indented
let g:tagbar_show_linenumbers = 1 "Whether line numbers should be shown in the Tagbar window.
let g:tagbar_iconchars = ['🤔', '▾']
let g:tagbar_autofocus = 1 "going on list
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"syntacstic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" https://unicode.org/emoji/charts/full-emoji-list.html
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '🤔'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['python', 'pep8']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline settings 
" https://github.com/vim-airline/vim-airline/wiki/Dummies-Guide-to-the-status-bar-symbols-(Powerline-fonts)-on-Fedora,-Ubuntu-and-Windows
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" airline-theme :AirlineTheme
" https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_theme = 'angr'
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nerdtree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'







" tagbar settings
" https://robhoward.id.au/blog/2012/03/ctags-with-vim/
set tags=tags


colorscheme gruvbox
set background=dark

let python_highlight_all=1
syntax on
set number
set expandtab 
set tabstop=4
set clipboard=unnamed
set hlsearch
set incsearch
set encoding=UTF-8
map<C-1> :w<CR>
map<F1> :NERDTreeToggle<CR>
map<C-r> :source ~/.vimrc<CR>
map<C-i> :PlugInstall<CR>
map<F10> :Tagbar<CR>
