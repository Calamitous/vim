#!/usr/bin/bash

# Back up existing vim config
mv ~/.vim ~/.vim_bu
mv ~/.vimrc ~/.vimrc_bu

# Copy over new config
mv * ~/.vim
mv ~/.vim/.vimrc ~/.vimrc


