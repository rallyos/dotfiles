call plug#begin('~/.vim/plugged')

" Essential
Plug 'myusuf3/numbers.vim'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'
Plug 'owickstrom/vim-colors-paramount'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug '/usr/local/opt/fzf' "CtrlP replacement
Plug 'junegunn/fzf.vim' "CtrlP replacement and other cool things
Plug 'mileszs/ack.vim' "Search
Plug 'tpope/vim-fugitive' "Git in vim
Plug 'tomtom/tcomment_vim'

"Language specific
" Ruby
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-endwise', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }
Plug 'nathanaelkane/vim-indent-guides', { 'for': 'ruby' }

" JavaScript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

" Golang
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh'  }

" HTML & CSS
Plug 'mattn/emmet-vim', { 'for': ['html', 'css']  }
Plug 'alvan/vim-closetag', { 'for': ['html', 'css']  }
Plug 'Valloric/MatchTagAlways', { 'for': ['html', 'css']  }

" Distaction free writing
Plug 'junegunn/goyo.vim'

" Syntax
" ! Quickswitch if more complex completion is needed
" Plug 'sheerun/vim-polyglot'
" Plug 'Valloric/YouCompleteMe'
Plug 'ajh17/VimCompletesMe' "Lightweight completion

"Lint
Plug 'w0rp/ale'

" Tests
Plug 'tpope/vim-dispatch' "Tests runner TODO Try

" Code overview
Plug 'majutsushi/tagbar' "Visulize script structure
Plug 'sjl/gundo.vim' "Undo tree

" Other
Plug 'kylef/apiblueprint.vim' "Api documentation
Plug 'haya14busa/is.vim' "Search highlighting helper
Plug 'mattn/gist-vim' "Create gists super easy
Plug 'ryanoasis/vim-devicons'
Plug 'easymotion/vim-easymotion' " TODO Test this, because you're not using it
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'

call plug#end()

" UI
set background=dark
colorscheme paramount
set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline\ Nerd\ Font\ Complete:h12

set nocompatible              " be iMproved, required
set encoding=utf8
set expandtab
set autoindent
set smartindent
set nowrap
set hlsearch
set backspace=indent,eol,start

au BufNewFile,BufRead *.html set syntax=off

nnoremap ; :

" Habit making
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Automatically wrap comment block after 80 symbols
set formatprg=par\ -w80j

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Comment
vnoremap <c-/> :TComment<cr>

" Indent
vmap < <gv
vmap > >gv

map <C-p> :Files<CR>
map <C-i> :NERDTreeToggle<CR>
map <C-k> :TagbarToggle<CR>
nnoremap <F3> :NumbersToggle<CR>

" Type specific indentation
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
autocmd Filetype python setlocal ts=4 sts=4 sw=4
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=4 sts=4 sw=4
autocmd Filetype go setlocal ts=4 sts=4 sw=4
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2
filetype off

syntax on

" Snippets
let g:UltiSnipsExpandTrigger="<c-x>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=['~/.vim/bundle/vim-snippets/UltiSnips']

" Undo helper
nnoremap <F5> :GundoToggle<CR>

" Autocompletion
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_use_ultisnips_completer = 1

" Lint
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8'],
\}
let g:ale_enabled = 0
let g:jsx_ext_required = 0

" Tests
let g:rspec_runner = "os_x_iterm"

let g:indent_guides_guide_size = 1

" Exclude extensions for closetag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js"

"Needed for Go?
" set list
" set listchars=tab:>-

" Disable indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'startify']

" Toggle distraction free writing
function! s:goyo_enter()
  NumbersToggle
endfunction

function! s:goyo_leave()
  NumbersToggle
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" The Silver Searcher
if executable('ag')

  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " bind \ (backward slash) to grep shortcut
  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
  nnoremap \ :Ag<SPACE>
endif
