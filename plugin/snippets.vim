func Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc

nmap <silent> <Tab> /!@[^@]*@!/<CR>"_cf!
nmap <silent> ; /!@[^@]*@!/<CR>"_cf!

iab <silent> ar attr_reader
iab <silent> aw attr_writer
iab <silent> aa attr_accessor

iab <silent> ea each { \|!@block_variable@!\| !@block@! }<Esc>0<Tab><C-R>=Eatchar('\s')<CR>
iab <silent> eal each_line { \|!@block_variable@!\| !@block@! }<CR><Esc>3k0;<C-R>=Eatchar('\s')<CR>

iab <silent> def def !@method_name@!<CR>!@method_body@!<CR>end<CR><Esc>3k0;<C-R>=Eatchar('\s')<CR>
iab <silent> class class !@ClassName@!<CR>!@class_body@!<CR>end<CR><Esc>3k0;<C-R>=Eatchar('\s')<CR>

iab <silent> des describe !@Class@!, '!@method@!' do<CR>!@its@!<CR>end<Esc>2k0;<C-R>=Eatchar('\s')<CR>
iab <silent> it it "should !@should@!" do<CR>!@something@!<CR>end<CR><Esc>3k0;<C-R>=Eatchar('\s')<CR>
iab <silent> desit describe !@Class@!, '!@method@!' do<CR>it "should !@should@!" do<CR>!@stuff@!<CR>end<CR>end<CR><Esc>5kO<Esc>;<C-R>=Eatchar('\s')<CR>
