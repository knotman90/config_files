set nocompatible              " be iMproved, required
filetype off                  " required
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'https://github.com/ctrlpvim/ctrlp.vim'
Plugin 'https://github.com/scrooloose/syntastic'
Plugin 'https://github.com/Valloric/YouCompleteMe'
Plugin 'https://github.com/powerline/powerline'
Plugin 'https://github.com/terryma/vim-smooth-scroll'
Plugin 'https://github.com/scrooloose/nerdcommenter'
Plugin 'https://github.com/lervag/vimtex'
call vundle#end()            " required
filetype plugin indent on    " required


"syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*



let g:ycm_global_ycm_extra_conf  = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
nmap <Space>  i
imap jk <Esc>

"set line number on
set number
set relativenumber

"scroll settings
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

set rtp+=/usr/lib/python2.7/site-packages/powerline/bindings/vim
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab 
