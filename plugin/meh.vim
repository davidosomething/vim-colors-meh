augroup vim-colors-meh
  autocmd!
augroup END

" Override vim-pandoc-syntax highlighting
autocmd vim-colors-meh Syntax *pandoc*
      \ colorscheme meh
      \| meh#PandocColors()
