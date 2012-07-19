set tabstop=2 
"タブ幅の設定

set shiftwidth=2
"オートインデントの幅の設定
set expandtab
" インデントをスペースにする
set autoindent
"オートインデントを有効化
set nocompatible
"vim互換OFF

set showmatch
"対応括弧の表示

set number
"行番号の表示

:syntax enable
"ハイライトの有効

:set backspace=indent,eol,start
"バックスペースの設定

nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk
"inoremap <Down> gj
"inoremap <Up>   gk
"移動を物理行

:set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

:set laststatus=2

:let skk_large_jisyo='~/SKK-JISYO.L'
:let skk_auto_save_jisyo = 1
:let skk_kutouten_type = 'en'
:let skk_egg_like_newline = 1
:let skk_use_face = 1
"skk.vimの設定

:set encoding=utf-8
:set fileencodings=utf-8,euc-jp
