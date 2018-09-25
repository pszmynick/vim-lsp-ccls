# vim-lsp-ccls

This plugin is an extension of [vim-lsp](https://github.com/prabirshrestha/vim-lsp) plugin that supports some additional methods provided by [ccls](https://github.com/MaskRay/ccls). For now, this methods are `$ccls/inheritance`, `$ccls/call` and `$ccls/vars`. More methods will be added in future.

## Installing

Use your plugin manager of choise. For example if you use [vim-plug](https://github.com/junegunn/vim-plug) add the following lines to your vimrc:

```viml
" First install vim-lsp, this plugin relies on it:
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'JanValiska/vim-lsp-ccls'
```

Now follow the guide how to install ccls and add it to vim-lsp [here](https://github.com/MaskRay/ccls/wiki/vim-lsp).

## Commands

In addition to those commands defined by `vim-lsp` plugin, this one defines the following additional commands: 

1. `LspCclsDerived` - when used on function, get a list of functions that override this one. When used on a class, get a list of classes that inherit from this one.
2. `LspCclsBase` - get a base class (or a list of base classes) of this class.
3. `LspCclsVars` - get a list of all variables that are instances of this user-defined type.
4. `LspCclsCallers` - get a list of all callers of this function.

## Mappings

No mappings are defined by default. However, it is trivial to define your own. For example like so:

```viml
autocmd FileType c,cc,cpp,cxx,h,hpp nnoremap <leader>fv :LspCclsDerived<CR>
autocmd FileType c,cc,cpp,cxx,h,hpp nnoremap <leader>fc :LspCclsCallers<CR>
autocmd FileType c,cc,cpp,cxx,h,hpp nnoremap <leader>fb :LspCclsBase<CR>
autocmd FileType c,cc,cpp,cxx,h,hpp nnoremap <leader>fi :LspCclsVars<CR>
```

For the explanation, see [ccls](https://github.com/MaskRay/ccls).
