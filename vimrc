set nu

"Maps
map \\ :q!<CR>
map <leader>v :tabedit ~/.vimrc<CR>
map <space> /
map ,re :source ~/.vimrc<CR>
imap <tab> <C-P>
map j gj
map k gk

noremap <F2> :%s/\<<C-R><C-W>\>/<C-R><C-w>/gc
inoremap <F4> <C-R>=strftime("%Y-%b-%d %a %I:%M %p")<CR>
runtime macros/matchit.vim

" Pathogen
execute pathogen#infect()
syntax on
filetype off
filetype plugin indent off
filetype on
filetype plugin on
filetype plugin indent on
set backupdir=~/.tmp,./.backup,.,/tmp
set directory=~/.tmp,.,./.backup,/tmp

set clipboard=unnamedplus
set hlsearch
set incsearch
set lazyredraw
noremap - gT
noremap <c-space> gt
noremap <leader>t :Tex<CR>
noremap <C-s> :set buftype=" "<ESC>:w<CR><ESC>
inoremap <C-s> <Esc>:set buftype=" "<ESC> :w<CR><ESC>
inoremap jk <ESC>
inoremap <Esc> <nop>
set cursorcolumn

if has('gui_running')
        set background=dark
else
        set t_Co=16
        let g:solarized_termcolors=256
        set background=dark
endif
syntax on
colorscheme solarized
set ignorecase
set cmdheight=1
set laststatus=2
set wildmenu
set wildignore=*.dll,*.pyc,*.o
set wildmode=list:full
set cryptmethod=blowfish

"Tab
set expandtab
"
"Views
autocmd BufWinLeave ?* silent mkview
autocmd BufWinEnter ?* silent loadview

"Python Settings
autocmd BufEnter,BufRead,BufReadPre,BufNewFile *.py call PySettings()
function! PySettings()
        set syntax=python
        set expandtab
        set tabstop=4
        set shiftwidth=4
        set list
        set listchars=tab:>-,trail:-
        "echohl WarningMsg | echo "Python settings with 4 tabs" | echohl None
endfunction

function! Py2Settings()
        set expandtab
        set tabstop=2
        set shiftwidth=2
        set list
        set listchars=tab:>-,trail:-
        echohl WarningMsg | echo "Python settings with 2 tabs" | echohl None
endfunction

map ,py2 :call Py2Settings()<CR>
map ,py4 :call PySettings()<CR>

autocmd BufWritePre *.html :normal mzgg=G`z

autocmd BufEnter,BufRead,BufWritePost,BufReadPre,BufNewFile *.html call HTMLSettings()
function! HTMLSettings()
        set expandtab
        set tabstop=2
        set shiftwidth=2
        set list
        set listchars=tab:>-,trail:-
        set cursorcolumn
endfunction

"Go Settings
autocmd BufEnter,BufRead,BufWritePost,BufReadPre,BufNewFile *.go call GoSettings()
function! GoSettings()
        set noexpandtab
        set tabstop=4
        set shiftwidth=4
        set list
        set listchars=tab:>-,trail:-

        nmap <leader>r <Plug>(go-run)
        nmap <leader>b <Plug>(go-build)
        nmap <leader>gt <Plug>(go-test)
        nmap <leader>c <Plug>(go-coverage)
        nmap <Leader>ds <Plug>(go-def-split)
        nmap <Leader>dv <Plug>(go-def-vertical)
        nmap <Leader>dt <Plug>(go-def-tab)

        nmap <Leader>gd <Plug>(go-doc)
        nmap <Leader>gv <Plug>(go-doc-vertical)

        nmap <Leader>gb <Plug>(go-doc-browser)
        nmap <Leader>s <Plug>(go-implements)

        nmap <Leader>i <Plug>(go-info)

        nmap <Leader>e <Plug>(go-rename)

        let g:go_fmt_command = "goimports"
        setlocal nolist

endfunction

map ,ele :e scp://ashishthedev@elevation.adaptinfrastructure.com//home/ashishthedev/elevation/elevation.py
map ,e2 :e scp://ashish@staging.adaptwater.com.au//tmp/g.txt
"map ,e3 :e scp://ashish@adaptwater.com.au//tmp/g.txt<CR>
map ,e3 :e scp://ashish@adaptwater.com.au//tmp/g.txt<CR>
  
"""""""""""""" Cursor Jazz """""""""""""""""""'
"To change the cursor in insert mode
autocmd InsertEnter,InsertLeave ?* silent set cul!
:hi CursorLine cterm=NONE ctermbg=black

if has("autocmd")
  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
  au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
endif
set guicursor+=n-v-c:blinkon0


"""""""""""""" Syntastic Settings """""""""""""""""""'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'passive_filetypes': ['python', 'javascript'] }
"""""""""""""" Syntastic Settings End """""""""""""""""""'
