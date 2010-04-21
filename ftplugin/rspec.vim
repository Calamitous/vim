" Vim syntax file
" Language: RSpec
" Maintainer: Eric Budd <eric.b.budd@gmail.com>
" License: This file can be redistribued and/or modified under the same terms as Vim itself.
"
" Version: 0.2
" Last Change: 2009-12-08
" Notes: 
"
" Changes:
"   0.2: Cleaned up the calls to spec, added more flexibility and readability
"   0.1: Created
"

iab <silent> des describe '!@method@!' do<CR>!@its@!<CR>end<Esc>2k0;<C-R>=Eatchar('\s')<CR>
iab <silent> it it "should !@should@!" do<CR>!@something@!<CR>end<CR><Esc>3k0;<C-R>=Eatchar('\s')<CR>
iab <silent> desit describe '!@method@!' do<CR>it "should !@should@!" do<CR>!@stuff@!<CR>end<CR>end<CR><Esc>5kO<Esc>;<C-R>=Eatchar('\s')<CR>
iab <silent> bef before(:each) do<CR>!@before_block@!<CR>end<CR><Esc>3k0;<C-R>=Eatchar('\s')<CR>

function! OpenWindowAndRunSpec(spec_command, filename)
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap filetype=rspec_output nocursorline title titlestring="RSpec Output -- ".filename
  " let &titlestring="RSpec Output -- ".filename
  res 12

  echo "Running tests..."
  echo a:spec_command
  execute a:spec_command
  " call search("^\d\d*)$")
	/^\d\d*)$/e
endfunction

function! RunSpecFile(...)
  let filepath = expand("%")
  let filename = expand("%:t")

  if a:0 > 0 && has_key(a:1, 'command')
    let spec_command_name = get(a:1, 'command')
  else
    let spec_command_name = "script/spec"
  end

  if a:0 > 0 && get(a:1, 'type') == "single test"
    let line_number = " -l ".line(".")
  else
    let line_number = ""
  endif

  let spec_command = "$read !".spec_command_name.line_number." ".filepath

  call OpenWindowAndRunSpec(spec_command, filename)
endfunction

noremap <buffer><silent> <D-F10> :w<CR>:call RunSpecFile({ "command":"spec" })<CR>/^\d\d*)$<CR>
noremap <buffer><silent> <D-F11> :w<CR>:call RunSpecFile({ "command":"spec", "type":"single test" })<CR>/^\d\d*)$<CR>

noremap <buffer><silent> <F10> :w<CR>:call RunSpecFile()<CR>
noremap <buffer><silent> <F11> :w<CR>:call RunSpecFile({ "type":"single test" })<CR>/^\d\d*)$<CR>

