let mapleader="\<Space>"


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


" coc-explorer
nmap <Leader>e <Cmd>CocCommand explorer<CR>

" zoom split
nnoremap Zz <C-w>_ \|<c-w>\|
nnoremap Zo <C-w>=
