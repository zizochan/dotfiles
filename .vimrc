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
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'romanvbabenko/rails.vim'
NeoBundle 'sudo.vim'
" NeoBundle 'slim-template/vim-slim'
" NeoBundle 'airblade/vim-gitgutter'

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

" set last position
:au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
