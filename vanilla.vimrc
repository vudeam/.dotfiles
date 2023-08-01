" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"filetype plugin indent on

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
    source /etc/vim/vimrc.local
endif

colorscheme industry
" set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
"set listchars=tab:>-,space:·
"set list
" https://github.com/vudeam/.dotfiles
" different config settings
set encoding=UTF-8
set fileencoding=utf-8
set ruler
set iskeyword+=-                " treat dash-separated words as word text objects
set mouse=a
set splitbelow                  " horizontal splits will be below (opened file below)
set splitright                  " vertival splits wille be on the right (opened file right)
set conceallevel=0              " to see `` in Markdown files
set tabstop=4                   " insert 4 spaces for a tab
set shiftwidth=4                " number of characters inserted for indentation
set smarttab
set expandtab
set smartindent
set autoindent
set laststatus=0                " always display the status line
set relativenumber              " line numbers
set cursorline
set background=dark             " tell Vim what the background color looks like
set showtabline=2               " always show tabs (tabline above)
set scrolloff=10                " keep at least 10 lines above and below the cursor

" try it out
set visualbell

" use Alt + hjkl to resize windows
nnoremap <M-j>    :resize -1<CR>
nnoremap <M-k>    :resize +1<CR>
nnoremap <M-h>    :vertical resize -1<CR>
nnoremap <M-l>    :vertical resize +1<CR>


" better windows navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB>: bprevious<CR>


" WTF
nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da


" russian ЙЦУКЕН (QWERTY) keyboard layout
set langmap=фa,иb,сc,вd,уe,аf,пg,рh,шi,оj,лk,дl,ьm,тn,щo,зp,йq,кr,ыs,еt,гu,мv,цw,чx,нy,яz,ФA,ИB,СC,ВD,УE,АF,ПG,РH,ШI,ОJ,ЛK,ДL,ЬM,ТN,ЩO,ЗP,ЙQ,КR,ЫS,ЕT,ГU,МV,ЦW,ЧX,НY,ЯZ
set langmap+=Ж:,Ё~
set langmap+=х[,ъ]


" move line up and down with Ctrl + { j | k }
" works with Visual mode too
nnoremap <C-A-j> :m .+1<CR>==
nnoremap <C-A-k> :m .-2<CR>==
inoremap <C-A-j> <Esc>:m .+1<CR>==gi
inoremap <C-A-k> <Esc>:m .-2<CR>==gi
vnoremap <C-A-j> :m '>+1<CR>gv=gv
vnoremap <C-A-k> :m '<-2<CR>gv=gv


" spell check
map <F5> :setlocal spell!<CR>
map <F6> :setlocal spelllang=en_us<CR>
map <F7> :setlocal spelllang=ru_ru<CR>
