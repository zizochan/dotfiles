"dein Scripts-----------------------------
if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('$HOME/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
call dein#add('scrooloose/nerdtree')

" syntax
call dein#add('scrooloose/syntastic')
call dein#add('slim-template/vim-slim')
call dein#add('hail2u/vim-css3-syntax')
call dein#add('vim-scripts/vim-javascript')
call dein#add('kchmck/vim-coffee-script')

" 日時をインクリメント／デクリメント
call dein#add('tpope/vim-speeddating')

" 括弧自動補完
call dein#add('jiangmiao/auto-pairs')

" 整形(ga)
call dein#add('junegunn/vim-easy-align')
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Ruby向けにendを自動挿入してくれる
call dein#add('tpope/vim-endwise')

" コメントON/OFFを手軽に実行(Ctrl + ハイフン2回)
call dein#add('tomtom/tcomment_vim')

" ログファイルを色づけしてくれる
call dein#add('vim-scripts/AnsiEsc.vim')

" 行末の半角スペースを可視化
call dein#add('bronson/vim-trailing-whitespace')

" Required:
call dein#end()

"引数なしで実行したとき、NERDTreeを実行する
let file_name = expand("%:p")
if has('vim_starting') &&  file_name == ""
  autocmd VimEnter * execute 'NERDTree ./'
endif

" スワップファイルは使わない
set noswapfile

" インデントをスペースにする
set expandtab

" ESCキー連打で検索結果ハイライトをリセットする
:nnoremap <ESC><ESC> :nohlsearch<CR>

" set last position
:au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Required:
filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
