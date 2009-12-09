" Vim syntax file
" Language: Haml (XHTML Abstraction Markup Language)
" Maintainer: Dmitry A. Ilyashevich <dmitry.ilyashevich@gmail.com>
" License: This file can be redistribued and/or modified under the same terms
"   as Vim itself.
"
" Version: 0.3
" Last Change: 2008-03-16
" Notes: Last synced with Haml 1.8
" TODO: Support for indented multiline sections
"
" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
"
" Changes:
"   - David Bushong added support for Haml 1.8's == syntax for ruby strings;
"   - Lasse Jansen make syntax highlighting of multiline ruby commands work
"     ("|" at the end of the line).
"

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'rspec_output'
endif

if version < 600
  so <sfile>:p:h/html.vim
  syn include @rubyTop <sfile>:p:h/ruby.vim
else
  runtime! syntax/html.vim
  unlet b:current_syntax
  syn include @rubyTop syntax/ruby.vim
endif

syn match RspecWithErrors   "^\d* example.*, [^0]\d* failure.*$"
syn match RspecOK           "^\d* example.*, 0 failures.*$"

syn match SpecLineError     "[EF]" contained
syn match SpecLineOK        "\." contained
syn match SpecLinePending   "P" contained
syn match SpecOutputLine    "^[\.EFP][\.EFP]*$" contains=SpecLineError,SpecLineOK,SpecLinePending

syn match FailingTestNumber "^\d\d*)$"

syn match SpecErrorLineNumber        "\d\d*$" contained
syn match SpecErrorFileName          "^.*\/.*:\d\d*:.*$" contains=SpecErrorLineNumber

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_rspec_output_syntax_inits")
  if version < 508
    let did_rspec_output_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink RspecWithErrors        Error
  HiLink RspecOK                Todo
  HiLink SpecOutputLine         Comment
  HiLink SpecLineError          Error
  HiLink SpecLinePending        Todo
  HiLink FailingTestNumber	Todo
  HiLink SpecErrorFileName      Underline
  HiLink SpecErrorLineNumber    Identifier

  delcommand HiLink
endif
let b:current_syntax = "rspec_output"

if main_syntax == 'rspec_output'
  unlet main_syntax
endif

" vim: nowrap sw=2 sts=2 ts=8 ff=unix:
