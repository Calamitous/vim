This is my custom vim setup. Move or symlink .vimrc to ~/.vimrc. The rest of the files should be in ~/.vim

This bundle includes:

* Ruby Vim bindings
* Rails Vim bindings
* Textmate-style "Fuzzy Finder" (access w/ Meta-Shift-D; doesn't appear to work correctly on OS X)
* Snippets system.  See below for use.
* Ctrl-C, Ctrl-X, and Ctrl-V now work as system-wide Copy, Cut, and Paste.  Note that Ctrl-V only works in insert mode; visual block mode can still be activated normally.
* RSpec examples can run directly from vim: F11 will run the example under the cursor, and F10 will run the whole file.

## Snippets:
Snippets will automatically expand when you are in a Ruby (or RSpec) file.  Typing a snippet activator and pressing space (or any nonword character) will exand the snippet into a larger block of code, sometimes with replaceable tags. For example, in a Ruby file, if you type:

    class

...Vim will expand it to:

    class !@ClassName@!
      !@class_body@!
    end

The !@...@! tags are used to jump to areas where new code will need to be filled in.  Hitting Esc to drop back to command mode and pressing Tab will jump to the next tag, clear it out, and put you back into insert mode.  Generally, a snippet with tags will automatically jump you to the first tag as it expands.

You can use the semicolon (;) instead of Tab if you'd prefer.  If you don't like either of these options, you can change the jump key in plugin/snippets.vim

This bundle currently includes the following snippets:

### Ruby Snippets:
* 'class' expands to a full class definition
* 'module' expands to a full module definition
* 'def' expands to a full method definition

* 'ea' expands to an inline each block
* 'eal' expands to an inline each_line block
* 'eawi' expands to an inline each_with_index block
* 'eai' expands to an inline each_index block

* 'aa' expands to 'attr_accessor'
* 'ar' expands to 'attr_reader'
* 'aw' expands to 'attr_writer'

### RSpec Snippets:
* 'des' expands to a describe block
* 'it' expands to an it block
* 'desit' expands to a describe block with a nested it block

All snippet and feature suggestions are welcome.

