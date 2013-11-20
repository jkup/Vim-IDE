" Vim file type plugin
" Language:   Markdown
" Maintainer: Hallison Batista <hallison.batista@gmail.com>
" Remark:     This source is a complement of the Vim-Markdown syntax
"             highlight.

if exists("current_compiler")
  echo current_compiler
  finish
endif
let current_compiler = "markdown"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

CompilerSet makeprg=markdown\ $*
CompilerSet errorformat&		" use the default 'errorformat'

let &cpo = s:cpo_save
unlet s:cpo_save

" vim: nowrap sw=2 sts=2 ts=8:
