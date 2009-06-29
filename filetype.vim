au BufRead,BufNewFile *_spec.rb       setfiletype rspec

" Ruby
au BufNewFile,BufRead *.rb,*.rbw,*.gem,*.gemspec	set filetype=ruby

" Ruby on Rails
au BufNewFile,BufRead *.builder,*.rxml,*.rjs		set filetype=ruby

" Rakefile
au BufNewFile,BufRead [rR]akefile,*.rake		set filetype=ruby

" Rackup file
au BufNewFile,BufRead *.ru		set filetype=ruby

" Rantfile
au BufNewFile,BufRead [rR]antfile,*.rant		set filetype=ruby

" eRuby
au BufNewFile,BufRead *.erb,*.rhtml			set filetype=eruby

au! BufRead,BufNewFile *.haml         setfiletype haml
au! BufRead,BufNewFile *.sass         setfiletype sass
au BufRead,BufNewFile *.txt,*.text    setfiletype text

