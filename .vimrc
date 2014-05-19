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
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'The-NERD-tree'
NeoBundle 'syntastic'
NeoBundle 'jiangmiao/auto-pairs'

 call neobundle#end()

filetype plugin indent on

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

" set last position
:au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
