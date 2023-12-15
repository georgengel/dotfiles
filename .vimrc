" Start out from 
" https://github.com/changemewtf/no_plugins/blob/master/no_plugins.vim
" and 
" https://www.youtube.com/watch?v=n9k9scbTuvQ

set nocompatible

nmap <space> <bslash>

filetype plugin on
" https://stackoverflow.com/questions/33380451
if !exists("g:syntax_on")
    syntax enable
endif

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set number relativenumber

" vimwiki with markdown support
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
" helppage -> :h vimwiki-syntax

inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf


" FINDING FILES:
set path+=**
"set wildmode=longest,full,list
set wildmode=full
set wildmenu
" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:lightline = {
"      \ 'colorscheme': 'darcula',
"      \ }

" Always show statusline
"set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
"set t_Co=256

"syntax enable
"let g:rehash256 = 1

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
"set noshowmode

set laststatus=2

"function! GitBranch()
"  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
"endfunction

set statusline=
"set statusline+=%#PmenuSel#
"set statusline+=%{GitBranch()}
"set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
"set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\

" https://gitlab.com/dwt1/dotfiles/-/blob/master/.vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vifm
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <Leader>vv :Vifm<CR>
"map <Leader>vs :VsplitVifm<CR>
"map <Leader>sp :SplitVifm<CR>
"map <Leader>dv :DiffVifm<CR>
"map <Leader>tv :TabVifm<CR>

"let g:loaded_netrw       = 1
"let g:loaded_netrwPlugin = 1
"
"let g:vifm_replace_netrw = 1

" FILE BROWSING: toggle dotfile with 'gh'

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

"noremap <Up> <nop>
"noremap <Down> <nop>
"noremap <Left> <nop>
"noremap <Right> <nop>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => commitment!
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"inoremap <Up> <nop>
"inoremap <Down> <nop>
"inoremap <Left> <nop>
"inoremap <Right> <nop>

" [200~https://stackoverflow.com/questions/1737163
" provide hjkl movements in Insert mode via the <Alt> modifier key
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l

" Source a local vimrc {{{
    if has('win32')
        let $MYLOCALVIMRC = $HOME . "/_local.vim"
    else
        let $MYLOCALVIMRC = $HOME . "/.local.vim"
    endif

    if filereadable($MYLOCALVIMRC)
        source $MYLOCALVIMRC
    endif
" }}}
