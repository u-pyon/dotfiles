"-------------------------------------------------
" エディター設定
"-------------------------------------------------

" 保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//e
