iab <silent> ar attr_reader
iab <silent> aw attr_writer
iab <silent> aa attr_accessor

iab <silent> ea each { \|!@block_variable@!\| !@block@! }<Esc>0<Tab><C-R>=Eatchar('\s')<CR>
iab <silent> eal each_line { \|!@block_variable@!\| !@block@! }<CR><Esc>3k0;<C-R>=Eatchar('\s')<CR>

iab <silent> def def !@method_name@!<CR>!@method_body@!<CR>end<CR><Esc>3k0;<C-R>=Eatchar('\s')<CR>
iab <silent> class class !@ClassName@!<CR>!@class_body@!<CR>end<CR><Esc>3k0;<C-R>=Eatchar('\s')<CR>
iab <silent> module module !@ModuleName@!<CR>!@module_body@!<CR>end<CR><Esc>3k0;<C-R>=Eatchar('\s')<CR>
