set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'
"Language specific
"  Ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
"  JavaScript
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'matthewsimo/angular-vim-snippets'
Plugin 'burnettk/vim-angular'
Plugin 'claco/jasmine.vim'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'ternjs/tern_for_vim'
Plugin 'mxw/vim-jsx'
" Golang
Plugin 'fatih/vim-go'
" HTML & CSS
Plugin 'mattn/emmet-vim'
Plugin 'alvan/vim-closetag'
Plugin 'Valloric/MatchTagAlways'

" Interface
Plugin 'mhinz/vim-startify'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'myusuf3/numbers.vim'
Plugin 'airblade/vim-gitgutter'

" Colors
Bundle 'altercation/vim-colors-solarized'
Bundle 'owickstrom/vim-colors-paramount'
Plugin 'trusktr/seti.vim'
Plugin 'notpratheek/vim-luna'
Plugin 'reedes/vim-colors-pencil'
Plugin 'morhetz/gruvbox'

" Syntax
Plugin 'sheerun/vim-polyglot'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'ervandew/supertab'
" Plugin 'scrooloose/syntastic'
Plugin 'w0rp/ale'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tomtom/tcomment_vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}

" Other
Plugin 'wakatime/vim-wakatime'
Plugin 'mattn/gist-vim' "Create gists super easy
Plugin 'mileszs/ack.vim' "Search
Plugin 'tpope/vim-fugitive' "Git in vim
Plugin 'majutsushi/tagbar' "Visualize script structure
Plugin 'sjl/gundo.vim' "Undo tree
Plugin 'tpope/vim-dispatch' "Tests thing



Plugin 'easymotion/vim-easymotion'


call vundle#end()


set nocompatible              " be iMproved, required
set number

set encoding=utf8
let g:airline_powerline_fonts = 1

set expandtab
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype python setlocal ts=4 sts=4 sw=4
autocmd Filetype json setlocal ts=4 sts=4 sw=4
autocmd Filetype go setlocal ts=4 sts=4 sw=4
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype smarty setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd FileType scss setlocal ts=2 sts=2 sw=2

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

let g:syntastic_python_checkers = ['']
" let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_post_args="--max-line-length=120"
let g:syntastic_javascript_checkers = ['']
" let g:syntastic_javascript_checkers = ['eslint']

let g:ale_linters = {
\   'javascript': ['eslint'],
\}
" !!!!!
let g:ale_enabled = 0
" !!!!!
let g:jsx_ext_required = 0

let g:rspec_runner = "os_x_iterm"

syntax on
set laststatus=2
set background=dark
colorscheme gruvbox
colorscheme paramount

autocmd FileType javascript set formatprg=prettier\ --stdin

let g:used_javascript_libs = 'angularjs,backbone'

let g:indent_guides_guide_size = 1

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js"

let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'
let g:airline#extensions#bufferline#enabled = 1


let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']

call airline#parts#define_function('ALE', 'ALEGetStatusLine')
call airline#parts#define_condition('ALE', 'exists("*ALEGetStatusLine")')
"
let g:airline_section_error = airline#section#create_right(['ALE'])

set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline\ Nerd\ Font\ Complete:h12

nnoremap <F3> :NumbersToggle<CR>
nnoremap ; :
vnoremap <c-/> :TComment<cr>
vmap < <gv
vmap > >gv

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0
set backspace=indent,eol,start

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

let g:ctrlp_custom_ignore = 'dist/'
let g:ctrlp_path_sort = 1

map <C-i> :NERDTreeToggle<CR>
map <C-k> :TagbarToggle<CR>

"Using vim-airline, but maybe this can stay for safety reasons (running on
"other OS's, is that important ?)
set statusline=%f
set statusline+=%#warningmsg#
set statusline=%{ALEGetStatusLine()}
set statusline+=%*

let g:javascript_plugin_ngdoc = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'startify']

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('rb', 'Red', 'none', 'red', '#151515')

"open nerdtree automatically"
"autocmd StdinReadPre * let s:std_in=1"
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif"
