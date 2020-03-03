# 日本語を使用
export LANG=ja_JP.UTF-8

# 色を使用
autoload -Uz colors
colors

# 補完
autoload -Uz compinit
compinit

# editor
export EDITOR=vi

# ヒストリーに重複を表示しない
setopt histignorealldups

# config
HISTFILE=~/.zsh_history
HISTSIZE=3000
SAVEHIST=30000

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

# ターミナルをカラーにする
export CLICOLOR=true

# 補完表示後にカーソル移動可能にする
zstyle ':completion:*:default' menu select=1

# グロッビングによるエラー回避
setopt nonomatch

