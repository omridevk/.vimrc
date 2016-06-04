"---------- PATHOGEN -----------"

call pathogen#infect()
call pathogen#helptags()


"---------- VISUALS ------------"


"---------- GLOBAL -------------"

let mapleader = ','                     "map Leader to , instead of \"
set number                              "show line numbers" 


"---------- SEARCH -------------"

set hlsearch                            "set highlight search"
set incsearch                           "automatically move to first occurrence of the search result"



"---------- SPLIT --------------"

set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"---------- MAPPINGS -----------"


"use leader ev to edit the vimrc in a new tab "
nmap <Leader>ev :tabedit ~/.vim/my_configs.vim<cr>   

"comma space to remove highlighted search"
nmap <Leader><space> :nohlsearch<cr>

"---------- AUTOMATION -----------"

" automatically source the config file on save "

augroup autosourcing
    autocmd!
    autocmd BufWritePost my_configs.vim source %
augroup END
