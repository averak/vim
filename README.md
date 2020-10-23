my vim config
==============

[![Build Status](https://api.travis-ci.org/AjxLab/vim.svg?branch=master)](https://travis-ci.org/AjxLab/vim)

## Usage
### ウィンドウ操作
Keybind       | Description
--------------|-----------------------------
space + s     | 下にウィンドウを追加
space + v     | 右にウィンドウを追加
[←→↑↓]       | ウィンドウ移動
space + ter   | ターミナルを起動

### タブ操作
Keybind       | Description
--------------|-----------------------------
space + t     | タブを新規作成
Tab           | 右のタブに移動
S-Tab         | 左のタブに移動

### カーソル移動
Keybind       | Description
--------------|-----------------------------
h             | 左に移動
n             | 右に移動
k             | 上に移動
t             | 下に移動
H             | 一番左に移動
N             | 一番右に移動
gg            | 一番上に移動
G             | 一番下に移動
ok            | 上に画面半分スクロール
ot            | 下に画面半分スクロール

### バッファ移動
Keybind       | Description
--------------|-----------------------------
ah            | 左へ移動
an            | 右へ移動

### Gina
Keybind       | Description
--------------|-----------------------------
ak            | :Gina diff
at            | :Gina status

### 数値操作
Keybind       | Description
--------------|-----------------------------
数字の上で+   | インクリメント
数字の上で-   | デクリメント

### コマンド
Keybind       | Description
--------------|-----------------------------
:PlugUnpade   | プラグインをアップデート
:Tread        | ツイートを取得
:Tpost        | ツイートを投稿
:Tswitch      | ツイッターアカウントを切り替え

### Coc.nvim
Keybind       | Description
--------------|-----------------------------
space + space | CocList
K             | 定義ジャンプ
T             | ドキュメントを表示
space + rf    | References
space + rn    | rename
space + fmt   | Format

### その他
Keybind       | Description
--------------|-----------------------------
space + go    | :QuickRun
ga            | 選択範囲を整形
Ctrl + p      | Markdownのプレビュー
space + ff    | FZF
space + dir   | NERDTree

## Installation
```sh
$ git clone https://github.com/AjxLab/vim ~/.vim
```
