" Vim file type plugin
" Language:   Markdown
" Maintainer: Hallison Batista <hallison.batista@gmail.com>
" Remark:     This source is a complement of the Vim-Markdown syntax
"             highlight.

if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1
let b:undo_ftplugin = "setlocal textwidth< conceallevel< concealcursor<"

setlocal formatoptions+=tcroql conceallevel=2 concealcursor=nc

