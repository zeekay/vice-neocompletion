if version < 702
    echoerr 'vice-neocompletion requires vim 7.2 or newer'
    finish
endif

if !exists('g:vice.neocompletion')
    let g:vice.neocompletion = {}
endif

if has('lua')
    " use newer neocomplete.vim if compiled with lua support
    call vice#neocomplete#enable()
else
    " use older neocomplcache settings
    call vice#neocomplcache#enable()
endif
