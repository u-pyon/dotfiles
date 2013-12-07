
set encoding=utf-8
set fileencodings=utf-8,sjis,iso-2022-jp,euc-jp
set fileformats=dos,unix
set guifont=Ricty_for_Powerline:h10
set tabstop=2
set noexpandtab
set shiftwidth=2
set softtabstop=2
set nocompatible
set linebreak

colorscheme darkblue
execute pathogen#infect()
syntax on
"filetype plugin on

"" For NeoBundle
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif
" originalrepos on github
"NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'cygwin' : 'make -f make_cygwin.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
  \ },
\ }
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neocomplcache-rsense'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'git://github.com/kien/ctrlp.vim.git'
""NeoBundle 'https://bitbucket.org/kovisoft/slimv'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'rails.vim'
NeoBundle 'Lokaltog/vim-powerline'

filetype plugin indent on     " required!
filetype indent on
"vi上から、:NeoBundleInstallで.vimrcのNeoBundleで指定されているリポジトリのプラグインをインストールできる。
"プラグインを削除したい場合は、vimrc上からNeoBundleの記述を消して:NeoBundleCleanでできる。
"" /For NeoBundle


"" vim-rspec

" VimからRSpecを実行する
NeoBundle "skwp/vim-rspec.git"
" let g:RspecKeyma,=0
nnoremap <silent> ,rs :RunSpec<CR>
nnoremap <silent> ,rl :RunSpecLine<CR>

"/vim-rspec

"--------------------------------------------------------------------------
" neocomplcache
let g:neocomplcache_enable_at_startup = 1

" Enable omni completion. Not required if they are already set elsewhere in
" .vimrc
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

"--------------------------------------------------------------------------
" neosnippet

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable() ?
      \"\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>"
      \: "\<TAB>"
smap <expr><TAB> neosnippet#expandable() ?
      \"\<Plug>(neosnippet_expand_or_jump)"
      \: "\<TAB>"
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif


"set runtimepath+=~/.vim/
"runtime! userautoload/*.vim

"新しい行のインデントを現在行と同じにする
set autoindent
"バックアップファイルを作るディレクトリ
set nobackup
"ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
set browsedir=buffer
"クリップボードをWindowsと連携
set clipboard=unnamed
"Vi互換をオフ
"set nocompatible
"スワップファイル用のディレクトリ
"set directory=$HOME/vimbackup
"タブの代わりに空白文字を挿入する
set expandtab
"変更中のファイルでも、保存しないで他のファイルを表示
set hidden
"インクリメンタルサーチを行う
set incsearch
"タブ文字、行末など不可視文字を表示する
"set list
"listで表示される文字のフォーマットを指定する
"set listchars=eol:$,tab:>\ ,extends:<
"行番号を表示する
set number
"シフト移動幅
set shiftwidth=2
"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch
"検索時に大文字を含んでいたら大/小を区別
set smartcase
"新しい行を作ったときに高度な自動インデントを行う
"set smartindent
"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
"ファイル内の <Tab> が対応する空白の数
set tabstop=2
"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
"検索をファイルの先頭へループしない
set nowrapscan



"-------------------------------------------------
" エディター設定
"-------------------------------------------------

" 保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//e



"-------------------------------------------------
" ユーザー定義関数
"-------------------------------------------------

" Paste Mode
" {{{
let paste_mode = 0 " 0 = normal, 1 = paste

function! Paste_on_off()
    if g:paste_mode == 0
        set paste
        let g:paste_mode = 1
    else
        set nopaste
        let g:paste_mode = 0
    endif
    return
endfunc
" }}}
