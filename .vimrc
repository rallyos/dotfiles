call plug#begin('~/.vim/plugged')

"Language specific
"  Ruby
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-endwise', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }

"  JavaScript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
Plug 'matthewsimo/angular-vim-snippets', { 'for': 'javascript' }
Plug 'burnettk/vim-angular', { 'for': 'javascript' }
Plug 'claco/jasmine.vim', { 'for': 'javascript' }
Plug 'heavenshell/vim-jsdoc', { 'for': 'javascript' }
Plug 'ternjs/tern_for_vim', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'html'] }

" Golang
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh'  }

" HTML & CSS
Plug 'mattn/emmet-vim', { 'for': ['html', 'css']  }
Plug 'alvan/vim-closetag', { 'for': ['html', 'css']  }
Plug 'Valloric/MatchTagAlways', { 'for': ['html', 'css']  }

" Interface
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'myusuf3/numbers.vim'
Plug 'airblade/vim-gitgutter'

" Distaction free
Plug 'junegunn/goyo.vim'

" Colors
Plug 'owickstrom/vim-colors-paramount'

" Syntax
" Plug 'sheerun/vim-polyglot'
" Plug 'Valloric/YouCompleteMe'
Plug 'ajh17/VimCompletesMe'
" Plug 'ervandew/supertab'
Plug 'w0rp/ale'
" Plug 'nathanaelkane/vim-indent-guides' TODO Enable?
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-surround' " Replace parentheses and other surrounding symbols
Plug 'jiangmiao/auto-pairs'
Plug 'tomtom/tcomment_vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Other
Plug 'kylef/apiblueprint.vim' "Api documentation
Plug 'haya14busa/is.vim' "Search highlighting helper
Plug 'mattn/gist-vim' "Create gists super easy
Plug '/usr/local/opt/fzf' "CtrlP replacement
Plug 'junegunn/fzf.vim' "CtrlP replacement
Plug 'mileszs/ack.vim' "Search
Plug 'tpope/vim-fugitive' "Git in vim
Plug 'majutsushi/tagbar' "Visulize script structure
Plug 'sjl/gundo.vim' "Undo tree
Plug 'tpope/vim-dispatch' "Tests thing


Plug 'easymotion/vim-easymotion' " TODO Test this, because you're not using it

call plug#end()


set nocompatible              " be iMproved, required

set encoding=utf8
" let g:airline_powerline_fonts = 1

set expandtab
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype python setlocal ts=4 sts=4 sw=4
autocmd Filetype json setlocal ts=4 sts=4 sw=4
autocmd Filetype go setlocal ts=4 sts=4 sw=4
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2

set autoindent
set smartindent
set nowrap

filetype off                  " required

let g:UltiSnipsExpandTrigger="<c-x>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=['~/.vim/bundle/vim-snippets/UltiSnips']

nnoremap <F5> :GundoToggle<CR>

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_use_ultisnips_completer = 1

" ALE
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8'],
\}

let g:ale_enabled = 0

let g:jsx_ext_required = 0

let g:rspec_runner = "os_x_iterm"

syntax on
au BufNewFile,BufRead *.html set syntax=off

set laststatus=2
set background=dark
colorscheme paramount

set hlsearch

autocmd FileType javascript set formatprg=prettier\ --stdin

let g:used_javascript_libs = 'angularjs,backbone'

let g:indent_guides_guide_size = 1

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js"

" let g:airline_powerline_fonts = 1
" let g:airline_theme='tomorrow'
" let g:airline#extensions#bufferline#enabled = 1


let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']

" call airline#parts#define_function('ALE', 'ALEGetStatusLine')
" call airline#parts#define_condition('ALE', 'exists("*ALEGetStatusLine")')
" "
" let g:airline_section_error = airline#section#create_right(['ALE'])

set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline\ Nerd\ Font\ Complete:h12

nnoremap <F3> :NumbersToggle<CR>
nnoremap ; :
vnoremap <c-/> :TComment<cr>
vmap < <gv
vmap > >gv

set backspace=indent,eol,start

map <C-p> :Files<CR>
map <C-k> :TagbarToggle<CR>

"Using vim-airline, but maybe this can stay for safety reasons (running on
"other OS's, is that important ?)
" set statusline=%f
" set statusline+=%#warningmsg#
" set statusline=%{ALEGetStatusLine()}
" set statusline+=%*

"But what about Go?
" set list
" set listchars=tab:>-

let g:javascript_plugin_ngdoc = 1

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'startify']

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

hi StatusLine ctermbg=Black ctermfg=Black

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Automatically wrap comment block after 80 symbols
set formatprg=par\ -w80j

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
