" Vim syntax file
" Language: RSpec
" Maintainer: Eric Budd <eric.b.budd@gmail.com>
" License: This file can be redistribued and/or modified under the same terms
"   as Vim itself.
"
" Version: 0.1
" Last Change: 2009-01-06
" Notes: 
"
" Changes:
"

iab <silent> des describe '!@method@!' do<CR>!@its@!<CR>end<Esc>2k0;<C-R>=Eatchar('\s')<CR>
iab <silent> it it "should !@should@!" do<CR>!@something@!<CR>end<CR><Esc>3k0;<C-R>=Eatchar('\s')<CR>
iab <silent> desit describe '!@method@!' do<CR>it "should !@should@!" do<CR>!@stuff@!<CR>end<CR>end<CR><Esc>5kO<Esc>;<C-R>=Eatchar('\s')<CR>
iab <silent> bef before(:each) do<CR>!@before_block@!<CR>end<CR><Esc>3k0;<C-R>=Eatchar('\s')<CR>

noremap <buffer><silent> <F10> :w<CR>:echo "Running test file..."<CR>:!script/spec %<CR>

" randomly chosen to be near F10...
noremap <buffer><silent> <F11> :w<CR>:echo "Running tests..."<CR>:let spec_response = system("script/spec -l ".line(".")." ".expand("%"))<CR>:echo spec_response<CR>

" Sigh... everybody has their own keystroke for running specs...

" for Mac/Textmate geeks...
noremap <buffer><silent> <D-R> :w<CR>:echo "Running tests..."<CR>:let spec_response = system("script/spec -l ".line(".")." ".expand("%"))<CR>:echo spec_response<CR>
noremap <buffer><silent> <D-r> :w<CR>:echo "Running test file..."<CR>:!script/spec %<CR>

" for VS aficionados...?
" noremap <buffer><silent> <F5> :w<CR>:echo "Running tests..."<CR>:let spec_response = system("script/spec -l ".line(".")." ".expand("%"))<CR>:echo spec_response<CR>

