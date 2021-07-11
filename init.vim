set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

set nocompatible              " be improved, required
set encoding=utf-8
filetype off                  " required

if !exists('g:vscode')
    set termguicolors
    set number
    set rnu
endif


" ----------------------------- PLUGINS --------------------------------

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
if !exists('g:vscode')
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'tpope/vim-surround'
    Plugin 'preservim/nerdcommenter'
    Plugin 'preservim/nerdtree'
    Plugin 'vim-airline/vim-airline'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'Raimondi/delimitMate'
    Plugin 'cespare/vim-toml'
    Plugin 'Konfekt/vim-CtrlXA'
    Plugin 'christoomey/vim-tmux-navigator'
    Plugin 'jez/vim-superman'

    " Colorscheme related
    Plugin 'flazz/vim-colorschemes'
    "Plugin 'Jamedjo/setcolors.vim'
    Plugin 'junegunn/seoul256.vim'
else
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'tpope/vim-surround'
    Plugin 'Konfekt/vim-CtrlXA'
endif
call vundle#end()


" ------------------------- NICE OPTIONS ------------------------------

augroup VimAfter
    autocmd!
      autocmd VimEnter let g:CtrlXA_Toggles = [
      \ ['sweet', 'bitter'],
      \ ] + g:CtrlXA_Toggles
        augroup END

set completeopt-=preview
set scrolloff=5           " screen lines around cursor when searching, moving vertically, etc.

" ---------------------------- KEY MAPPINGS ------------------------------

set whichwrap=b,s,h,l
set backspace=indent,eol,start
nnoremap <backspace> <nop>

nnoremap <leader>s` :execute "normal \<Plug>Ysurroundiw`"<CR>
nnoremap <leader>s* :execute "normal \<Plug>Ysurroundiw\*"<CR>
nnoremap <leader>s_ :execute "normal \<Plug>Ysurroundiw_"<CR>
nnoremap <leader>s" :execute "normal \<Plug>Ysurroundiw\""<CR>
nnoremap <leader>s' :execute "normal \<Plug>Ysurroundiw\'"<CR>

" The = function seems pretty useless
noremap = +

" Insert an empty new line without entering insert mode
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

" Use [] commands even when { or } isn't in first column
noremap [[ ?{<CR>w99[{
noremap ][ /}<CR>b99]}
noremap ]] j0[[%/{<CR>
noremap [] k$][%?}<CR>

" Y copies to end of line, not entire line like yy
nnoremap Y y$

" Make word before Cursor Uppercase in normal mode
"nnoremap <C-y> mwlbgUl`w
"map! <C-y> <Esc>mwlbgUl`wa

" Send to black hole register (actually delete)
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" press // to search for highlighted text (visual mode)
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>")

" Replace all highlighted text with new text
nnoremap <leader>r :%s///g<left><left>

" Mappings to go to end of line and beginning of line
nnoremap L $
vnoremap L $
nnoremap H ^
vnoremap H ^

nnoremap J 10j
vnoremap J 10j
nnoremap K 10k
vnoremap K 10k

" Save any changes to current file
noremap <leader>w :update<CR>

" Closing out of panes
noremap <leader>q <c-w>q
noremap <leader>z :x<CR>
noremap QQ <c-w>q

" Split panes vertically, horizontally
nnoremap <c-w>\ <c-w>v
nnoremap <c-w>- <c-w>s

if !exists('g:vscode')

    " ------------------------- NICE OPTIONS ------------------------------

    let g:ycm_show_diagnostics_ui = 0
    let g:ycm_auto_hover=''

    " ------------------------- COLORS 'N STUFF ----------------------------

    " Colorscheme
    "colorscheme luna-term
    "colorscheme mango
    "colorscheme lilypink-seth
    "colorscheme lxvc 
    "colorscheme nord

    let g:gruvbox_contrast_dark="hard"
    colorscheme gruvbox

    "let g:seoul_background = 233
    "let g:seoul_srgb = 1
    "colorscheme seoul

    set background=dark

    let g:airline_powerline_fonts = 1

    " Filetype specific settings
    augroup cpp
      autocmd!
      set tabstop=2
      set shiftwidth=2
    augroup END

    autocmd FileType c,cpp  setlocal comments-=:// comments+=f://
    autocmd FileType make set noexpandtab softtabstop=0

    let g:NERDCustomDelimiters = { 'dosini': { 'left': '#'} }

    filetype plugin indent on    " required
    filetype plugin on
    syntax on
    set tabstop=4
    set shiftwidth=4
    set expandtab
    set t_Co=256

    "Sets syntax highlighting for files or filetypes
    au BufRead,BufNewFile .rosrc,.aliasrc,.environment set filetype=zsh
    au BufRead,BufNewFile zathurarc set filetype=conf
    au BufRead,BufNewFile *.conf set filetype=dosini
    au BufRead,BufNewFile *.launch set filetype=xml


    " ----------------------------- CLIPBOARD --------------------------------

    "set clipboard=unnamedplus,autoselectplus
    set clipboard+=unnamedplus

    " ---------------------------- KEY MAPPINGS ------------------------------

    " Mappings to move up and down faster
    "nnoremap J <C-d>
    "vnoremap J <C-d>
    "nnoremap K <C-u>
    "vnoremap K <C-u>

    " Highlight search term in file
    nnoremap <leader>l :set invhlsearch<cr>

    map <C-n> :NERDTreeToggle<CR>

    nnoremap <leader>sv :source /home/seth/env/init.vim<CR>
    nnoremap <leader>ssv :w <bar> :source /home/seth/env/init.vim<CR>

else

    "nnoremap J 10j
    "vnoremap J 10j
    "nnoremap K 10k
    "vnoremap K 10k

    " This is for Neovim VS Code
    "noremap <leader>w <Cmd>Write<CR>
    "noremap <leader>q <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
    "noremap <leader>z <Cmd>Wq<CR>
    "noremap QQ <Cmd>Quit!<CR>

    "nnoremap <C-]> <Cmd>call VSCodeNotify('')

endif
