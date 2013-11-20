" Vim file type plugin
" Language:   Markdown
" Maintainer: Hallison Batista <hallison.batista@gmail.com>
" Remark:     This source is a complement of the Vim-Markdown syntax
"             highlight.

autocmd BufNewFile,BufRead *.{md,mkd,mkdn,mark*} set filetype=markdown
autocmd FileType markdown compiler markdown

