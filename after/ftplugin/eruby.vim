"call Unftbundle('html')
"doautocmd BufRead
if !exists('b:did_eruby_unftbundle')
    let b:did_eruby_unftbundle = 1
    call Unftbundle('ruby')
    call Unftbundle(b:eruby_subtype)
endif
