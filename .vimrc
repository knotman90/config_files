" Follow this tutorial for installation
" http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/

" SET DEFAULTS (Color Scheme, Tab Spacing, etc.)
set nocompatible
filetype off
" RUNTIME (set the runtime path to include Vundle and initialize)
set rtp+=~/.vim/bundle/Vundle.vim

" PLUGINS (Put all plugins in here)
call vundle#begin()
Plugin 'https://github.com/Valloric/YouCompleteMe'
Plugin 'https://github.com/terryma/vim-smooth-scroll'
Plugin 'https://github.com/lervag/vimtex'
Plugin 'https://github.com/scrooloose/nerdcommenter'
Plugin 'gmarik/Vundle.vim'
Plugin 'mattn/webapi-vim'
Bundle 'jlanzarotta/bufexplorer'
Plugin 'bling/vim-airline.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'sickill/vim-monokai'
Bundle 'alexbel/vim-rubygems'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kchmck/vim-coffee-script'
Plugin 'briancollins/vim-jst'
Plugin 'nono/vim-handlebars'
Plugin 'ervandew/supertab.git'
Plugin 'simnalamburt/vim-mundo'
Plugin 'easymotion/vim-easymotion'
Plugin 'Shougo/deoplete.nvim'
Plugin 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
call vundle#end()


let g:ycm_global_ycm_extra_conf  = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_    conf.py'

nmap <Space>  i
imap<Esc>

"set line number on
set number
 set relativenumber
 
"scroll settings
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
set rtp+=/usr/lib/python2.7/site-packages/powerline/bindings/vim

filetype plugin indent on
set cursorline
set laststatus=2
set mouse=a
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab
au BufWritePost .nvimrc so ~/.nvimrc " (automatically reload nvimrc when it's saved)
set number
set numberwidth=2
set guifont=Menlo\ For\ Powerline
set noswapfile

syntax enable
set background=dark
colorscheme monokai


" Set leader
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

" VIM KEYMAPPINGS
nnoremap <S-Left> :bp<CR>
nnoremap <S-Right> :bn<CR>
nnoremap <tab>   <C-w>w
nnoremap <S—d>	:bd<CR>

" POWERLINE CONFIG
let g:airline_powerline_fonts = 1
let g:airline_theme           = 'base16'
let g:airline#extensions#tabline#enabled = 1

" NERDTREE CONFIG
" let NERDTreeShowHidden=0
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" CTRLP CONFIG - Vim Search/Finder
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<S-f>'
nnoremap <S-r> :CtrlPMRUFiles<CR>
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']
hi Normal ctermbg=none
highlight NonText ctermbg=none
let g:ackprg = 'ag --nogroup --nocolor --column'
autocmd VimEnter * if argc() == 0 | NERDTree | endif
autocmd BufWritePre * :%s/\s\+$//e
set undodir=~/.nvim/undodir
set undofile
set nobackup
" copy and paste to from system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

map <Leader>g :GundoToggle<CR>
map <Leader>r :RubygemsAppendVersion<CR>
command! W w

" Find string or method in project
map <Leader>ks :Ag '<C-R><C-W>'<CR>
map <Leader>kd :Ag 'def <C-R><C-W>'<CR>
map <Leader>ke :ccl<CR>

"Map CtrlP
map <Leader>ft :CtrlPTag<CR>
map <Leader>ff :CtrlP<CR>

" Config easytag
autocmd BufWritePost * exe ":UpdateTags"
let g:easytags_async = 1
let g:easytags_on_cursorhold = 0

" Config deoplete
"let g:deoplete#enable_at_startup = 1
"if !exists('g:deoplete#omni#input_patterns')
"  let g:deoplete#omni#input_patterns = {}
"endif
"" let g:deoplete#disable_auto_complete = 1
"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"" omnifuncs
"augroup omnifuncs
"  autocmd!
"  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"  autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
"  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"augroup end
"
"" tern
"if exists('g:plugs["tern_for_vim"]')
"  let g:tern_show_argument_hints = 'on_hold'
"  let g:tern_show_signature_in_pum = 1
"
"  autocmd FileType javascript setlocal omnifunc=tern#Complete
"endif
"" deoplete tab-complete
"inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : deoplete#mappings#manual_complete()
"" ,<Tab> for regular tab
"inoremap <Leader><Tab> <Space><Space>
"
"" tern
"autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>
