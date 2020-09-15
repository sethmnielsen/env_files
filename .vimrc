set nocompatible              " be improved, required
set laststatus=2
set encoding=utf-8
filetype off                  " required
set number

set tags=tags

" ----------------------------- PLUGINS --------------------------------

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-surround'
Plugin 'lervag/vimtex'
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'airblade/vim-gitgutter'
Plugin 'Raimondi/delimitMate'
Plugin 'cespare/vim-toml'
"Plugin 'vim-pandoc/vim-pandoc'
Plugin 'Konfekt/vim-CtrlXA'
"Plugin 'justinmk/vim-sneak'
Plugin 'christoomey/vim-tmux-navigator'

" Colorscheme related
"Plugin 'morhetz/gruvbox'
Plugin 'flazz/vim-colorschemes'
Plugin 'Jamedjo/setcolors.vim'
"Plugin 'doums/darcula'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'junegunn/seoul256.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

let g:tex_flavor = 'latex'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_auto_hover=''

augroup VimAfter
    autocmd!
      autocmd VimEnter let g:CtrlXA_Toggles = [
      \ ['sweet', 'bitter'],
      \ ] + g:CtrlXA_Toggles
        augroup END

"pandoc folding
"let g:pandoc#modules#disabled = ["folding", "formatting"]

" ------------------------- COLORS 'N STUFF ----------------------------

" Colorscheme
"colorscheme luna-term
colorscheme mango
"colorscheme nord
"
"let g:gruvbox_contrast_dark="hard"
"colorscheme gruvbox

"let g:seoul256_background = 233
"let g:seoul256_srgb = 1
"colorscheme seoul256

set background=dark

"set lazyredraw
set nostartofline
set whichwrap=b,s,h,l
set shortmess-=S
set completeopt-=preview

let g:airline_powerline_fonts = 1

" Filetype specific settings
augroup cpp
  autocmd!
  set tabstop=2
  set shiftwidth=2
augroup END

autocmd FileType c,cpp setlocal comments-=:// comments+=f://
autocmd FileType make set noexpandtab softtabstop=0

"Sets syntax highlighting for files or filetypes
autocmd BufRead,BufNewFile .launch set filetype=xml
autocmd BufRead,BufNewFile .rosrc,.aliasrc set filetype=zsh
autocmd BufRead,BufNewFile zathurarc set filetype=sh
autocmd BufRead,BufNewFile .conf set filetype=dosini

filetype plugin indent on    " required
filetype plugin on
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set t_Co=256

" ----------------------------- CLIPBOARD --------------------------------

set clipboard=unnamedplus,autoselectplus

"Use xclip for clipboard
let g:clipboard = {
  \   'name': 'xclip-xfce4-clipman',
  \   'copy': {
  \      '+': 'xclip -selection clipboard',
  \      '*': 'xclip -selection clipboard',
  \    },
  \   'paste': {
  \      '+': 'xclip -selection clipboard -o',
  \      '*': 'xclip -selection clipboard -o',
  \   },
  \   'cache_enabled': 1,
  \ }


" ---------------------------- KEY MAPPINGS ------------------------------

set backspace=indent,eol,start
nnoremap <backspace> <nop>

" The = function seems pretty useless
noremap = +

" Quickly insert an empty new line without entering insert mode
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

" Save any changes to current file
noremap <leader>w :update<CR>

" Replace all highlighted text with new text
nnoremap <leader>r :%s///g<left><left>

" Y copies to end of line, not entire line like yy
nnoremap Y y$

" Toggle case of letter under cursor
nnoremap U vU

" Make word before Cursor Uppercase in normal mode
nnoremap <C-y> mwlbgUl`w
map! <C-y> <Esc>mwlbgUl`wa

" Send to black hole register (actually delete)
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" press // to search for highlighted text (visual mode)
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>")
"
" Highlight search term in file
nnoremap <leader>l :set invhlsearch<cr>

" Split panes vertically, horizontally
nnoremap <c-w>\ <c-w>v
nnoremap <c-w>- <c-w>s
" Closing out of panes
nnoremap <leader>q <c-w>q
nnoremap qq <c-w>q
nnoremap QQ ZQ

map <C-n> :NERDTreeToggle<CR>

" Mappings to go to end of line and beginning of line
nnoremap L $
vnoremap L $
nnoremap H ^
vnoremap H ^

nnoremap <C-S-j> J
vnoremap <C-S-j> J

" Mappings to move up and down faster
nnoremap J 10j
nnoremap K 10k
vnoremap J 10j
vnoremap K 10k

" Move and stay in Insert mode using alt-hjkl
" causing problems with escape taking too long to leave insert mode
"inoremap h <Left>
"inoremap j <Down>
"inoremap k <Up>
"inoremap l <Right>

" Mappings to edit .vimrc and source/save .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ssv :w <bar> :source $MYVIMRC<cr>

" Mapping to edit ~/.vim/.ycm_extra_conf.py
nnoremap <leader>ycm :vsplit ~/.vim/.ycm_extra_conf.py<cr>
"inoremap {<CR> {<CR>}<Esc>ko

" Remap for latex compiling
nnoremap <leader>ll :w<CR>:!rubber --pdf --warn all %<CR>
nnoremap <leader>lv :!mupdf %:r.pdf &<CR><CR>
