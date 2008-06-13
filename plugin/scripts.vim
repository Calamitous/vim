noremap <F5> :w<CR>:let specresp = "spec -l " . line(".") . " " . expand("%")<CR>:let specresp = system(specresp)<CR>:echo specresp<CR>
