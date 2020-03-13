# read common file
if [ -f $dotfiles_dir/.rc.common ]; then
    . $dotfiles_dir/.rc.common
fi

# 色を使用
autoload -Uz colors
colors

# 補完
autoload -Uz compinit
compinit

# ヒストリーに重複を表示しない
setopt histignorealldups

# cdコマンドを省略して、ディレクトリ名のみの入力で移動
# setopt auto_cd

# 自動でpushdを実行
setopt auto_pushd

# pushdから重複を削除
setopt pushd_ignore_dups

# コマンドミスを修正
# setopt correct

# prompt
PROMPT='%m:%c$ '
setopt prompt_subst

# 補完表示後にカーソル移動可能にする
zstyle ':completion:*:default' menu select=1

# グロッビングによるエラー回避
setopt nonomatch
