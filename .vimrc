" -----------------USABILITY CONFIGURATION--------------------
" inspired by https://gist.github.com/gosukiwi/080d1d3f87f861a15c44
" and https://github.com/mikedao/dotfiles/blog/master/.vimrc

" don't try to be compatible with legacy vim
set nocompatible

" turn on syntax highlighting
syntax enable

" reload files changed outside vim
set autoread

"encoding is utf 8
set encoding=utf-8
set fileencoding=utf-8

" enable matchit plugin (figure out what this does first)
" runtime macros/matchit.vim

" set vim to delete over line breaks and auto-indentation
set backspace=indent,eol,start

" screen will not be redrawn while running macros, registers, or other non-typed comments
set lazyredraw

" copy to cliboard
set clipboard=unnamed

" set both relative and absolute numbers
set number


" --------------------- CUSTOMIZATION ----------------------

" tabs and indentation
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set autoindent
nnoremap <silent> <leader>i gg=G<CR>

" md files are markdown files
autocmd BufNewFile,BufRead *.md setlocal ft=markdown

" colors
set background=dark
colorscheme solarized
" lightline config
set laststatus=2
let g:lightline = {
  \ 'colorscheme': 'solarized'
  \ }

" Don't show the splash screen on startup
set shortmess=I

" set space as leader
map <SPACE> <leader>

" set split preferences
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" vim-test mappings
nnoremap <silent> <leader>r :TestFile<CR>
nnoremap <silent> <leader>n :TestNearest<CR>
nnoremap <silent> <leader>a :TestSuite<CR>

" Ugh... I guess.
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Set scroll buffer between cursor and window
set scrolloff=4

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()



" -------------------- PLUGIN CONFIGURATION -----------------
filetype off "required for Vundle

" initiate Vundle
let &runtimepath.=',$HOME/.vim/bundle/Vundle.vim'
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" start plugin definition
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'itchyny/lightline.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/syntastic'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'skammer/vim-css-color'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'janko-m/vim-test'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'elixir-editors/vim-elixir'
Plugin 'terryma/vim-multiple-cursors'

" end plugin definition
call vundle#end()
filetype plugin indent on

" syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" FuzzyFinder bindings
nmap <leader>t :FufFileWithCurrentBufferDir<CR>
nmap <leader>f :FufCoverageFile<CR>

au BufNewFile,BufRead *.handlebars set filetype=html
au BufNewFile,BufRead *.hbs set filetype=html
