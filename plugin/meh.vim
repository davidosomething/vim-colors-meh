augroup vim-colors-meh
  autocmd!
augroup END

" Override vim-pandoc-syntax highlighting
autocmd vim-colors-meh Syntax *pandoc*
      \   if get(g:, 'meh_pandoc_enabled', 1)
      \|    colorscheme meh
      \|    meh#PandocColors()
      \|  endif

" Apply line colors for ALL ColorSchemes
autocmd vim-colors-meh ColorScheme meh
      \   if get(g:, 'meh_linecolors_enabled', 1)
      \|    call meh#LineColors()
      \|  endif
