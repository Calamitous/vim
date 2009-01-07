#!/usr/bin/ruby

# Back up existing vim config

(`mv ~/.vim ~/.vim_bu`) if File.exists?('~/.vim')
(`mv ~/.vimrc ~/.vimrc_bu`) if File.exists?('~/.vimrc')

# Copy over new config
`mkdir ~/.vim`
`cp -r * ~/.vim`
`mv ~/.vim/.vimrc ~/.vimrc`

