source $HOME/.config/nvim/vim-plug/plugins.vim        " vim-plug
source $HOME/.config/nvim/plug-config/coc.vim         " Conquer of Completion settings
source $HOME/.config/nvim/plug-config/indentLine.vim  " IndentLine settings
source $HOME/.config/nvim/plug-config/vim-rainbow.vim " IndentLine settings
source $HOME/.config/nvim/themes/onedark.vim          " one dark theme
source $HOME/.config/nvim/themes/airline.vim          " tabline
source $HOME/.config/nvim/keys/mappings.vim           " key mappings


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
set number                      " line numbers
set cursorline
set background=dark             " tell Vim what the background color looks like
set showtabline=2               " always show tabs (tabline above)
set scrolloff=10                " keep at least 10 lines above and below the cursor

" try it out
set visualbell

