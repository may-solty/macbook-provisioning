" -------------------------------
"            Neobundle
" -------------------------------

set nocompatible               " Be iMproved
filetype off                   " Required!

" 初回起動時のみ、Neobundleのパスを指定する
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Neobundleの初期化
call neobundle#begin(expand('~/.vim/bundle/'))

" NeobundleをNeobundle自身で管理する
NeoBundleFetch 'Shougo/neobundle.vim'

" インストールするプラグインを以下に記載
"" ---------- Utility -----------
" 説明を入れてください
NeoBundle 'Shougo/unite.vim'

" ステータスラインの表示内を強化
NeoBundle 'itchyny/lightline.vim'

" コードの補完
NeoBundle 'Shougo/neocomplcache'
" 補完情報の入っている辞書
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

"" --------- Color Theme --------
" solarized
NeoBundle 'altercation/vim-colors-solarized'

call neobundle#end()

" ファイルタイプ別のプラグイン / インデントを有効にする
filetype plugin indent on

" Installation check.
if neobundle#exists_not_installed_bundles()
    echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
    echomsg 'Please execute ":NeoBundleInstall" command.'
"finish
endif



" -------------------------------
"            Setting
" -------------------------------
" 文字コードをUTF-8に設定
set fenc=utf-8

" 編集中のファイルが変更されたら、自動でリロード
set autoread

" バッファが編集中でもその他のファイルを開けるようにする
set hidden

" 入力中のコマンドをステータスに表示する
set showcmd



" -------------------------------
"           Color Scheme
" -------------------------------
syntax on
set background=dark
"colorscheme molokai



" -------------------------------
"           Appearance
" -------------------------------
" 行番号の表示
set number

" 現在の行を強調
set cursorline

" 現在の列を強調
set cursorcolumn

" 行末の1文字先までカーソルを移動できるようにする
set virtualedit=onemore

" インデントはスマートインデント
set smartindent

" ビープ音の可視化
set visualbell

" 括弧入力時の対応する括弧を表示
set showmatch

" ステータスラインを常に表示
set laststatus=2

" コマンドラインの補完
set wildmode=list:longest

" 折り返し時に表示行単位での移動をできるようにする
nnoremap j gj
nnoremap k gk



" -------------------------------
"            Keyborad
" -------------------------------
" 十字キーの入力を無効にする
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>
"inoremap <Up> <Nop>
"inoremap <Down> <Nop>
"inoremap <Left> <Nop>
"inoremap <Right> <Nop>



" -------------------------------
"              Tab
" -------------------------------
" 不可視文字の可視化（タブが「›-」と表示される）
set list listchars=tab:\›\-

" Tab文字を半角スペースにする
set expandtab

" 行頭以外のTab文字の表示幅（スペースの数）
set tabstop=2

" 行頭でのTab文字の表示幅
set shiftwidth=2

" -------------------------------
"            Search
" -------------------------------
" 検索文字列が小文字の場合は、大文字小文字を区別なく検索
set ignorecase

" 検索文字列に大文字が含まれている場合は区別して検索
set smartcase

" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch

" 検索辞任最後まで行ったら最初に戻る
set wrapscan

" 検索後をハイライトで表示
set hlsearch

" Esc連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" BackSpaceで削除できるものを指定する
"" indent  : 行頭の空白
"" eol     : 改行
"" start   : 挿入モード開始位置より手前の文字
set backspace=indent,eol,start
