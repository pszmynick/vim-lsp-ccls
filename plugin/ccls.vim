if exists('g:lsp_ccls_loaded')
    finish
endif
let g:lsp_ccls_loaded = 1

command! LspCclsDerived call ccls#references#derived()
command! LspCclsBase call ccls#references#base()
command! LspCclsVars call ccls#references#vars()
command! LspCclsCallers call ccls#references#callers()
