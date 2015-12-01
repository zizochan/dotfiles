set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~/dotfiles/.vim/bundle/'))
endif

call neobundle#begin(expand('~/dotfiles/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'Shougo/unite.vim'
NeoBundle 'The-NERD-tree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'romanvbabenko/rails.vim'
NeoBundle 'sudo.vim'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'tpope/vim-speeddating'

" 括弧自動補完
NeoBundle 'jiangmiao/auto-pairs'

" 整形(:Align [separators])
NeoBundle 'Align'

" Ruby向けにendを自動挿入してくれる
NeoBundle 'tpope/vim-endwise'

" コメントON/OFFを手軽に実行(Ctrl + ハイフン2回)
NeoBundle 'tomtom/tcomment_vim'

" ログファイルを色づけしてくれる
NeoBundle 'vim-scripts/AnsiEsc.vim'

" 行末の半角スペースを可視化
NeoBundle 'bronson/vim-trailing-whitespace'

" markdown preview(:PrevimOpen)
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'

call neobundle#end()

filetype plugin indent on

" gitgutter
nnoremap <silent> ,gg :<C-u>GitGutterToggle<CR>
nnoremap <silent> ,gh :<C-u>GitGutterLineHighlightsToggle<CR>

" syntastic
let g:loaded_syntastic_slim_slimrb_checker = 0

"隠しファイルを表示する。
let NERDTreeShowHidden = 1

"引数なしで実行したとき、NERDTreeを実行する
let file_name = expand("%:p")
if has('vim_starting') &&  file_name == ""
  autocmd VimEnter * execute 'NERDTree ./'
endif

" other
syntax on
set laststatus=2 " ステータス表示
set hlsearch " 検索結果ハイライト

" スワップファイルは使わない(ときどき面倒な警告が出るだけで役に立ったことがない)
set noswapfile

" 検索ワードの最初の文字を入力した時点で検索を開始する
set incsearch

" バックスペースで消せるように対応
set backspace=indent,eol,start

" インデントをスペースにする
set expandtab

" ESCキー連打で検索結果ハイライトをリセットする
:nnoremap <ESC><ESC> :nohlsearch<CR>

" set last position
:au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
