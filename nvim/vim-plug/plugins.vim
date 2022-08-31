call plug#begin('~/.config/nvim/autoload/plugged')

    " better syntax support
    Plug 'sheerun/vim-polyglot'

    " A dark color scheme for Vim based on Wombat
    " Plug 'pacha/vem-dark'

    " onr dark theme
    Plug 'joshdick/onedark.vim'

    " A lightweight Vim/NeoVim plugin to display buffers and tabs in the tabline
    " Plug 'pacha/vem-tabline'

    " A code-completion engine for Vim
    " Plug 'valloric/youcompleteme'

    " Conquer of Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " lean & mean status/tabline for Vim
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " visual indent levels
    Plug 'yggdroot/indentline'

    " auto pairs for '(', '[', '{'
    Plug 'jiangmiao/auto-pairs'

    " git wrapper
    Plug 'tpope/vim-fugitive'

    " rainbow parentheses
    Plug 'luochen1990/rainbow'

    " add icons to plugin fonts
    Plug 'ryanoasis/vim-devicons'
    " ALWAYS LOAD LAST

call plug#end()

