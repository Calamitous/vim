func Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc

nmap <silent> <Tab> /!@[^@]*@!/<CR>"_cf!
nmap <silent> ; /!@[^@]*@!/<CR>"_cf!
