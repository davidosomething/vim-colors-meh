# vim-colors-meh

> A 256-color / 24-bit Vim color scheme, with preference for contrast over hues.

It works for me, just publishing it in case someone has similar taste and
wants to use it.

![screenshot](https://user-images.githubusercontent.com/609213/39612203-511a6b2e-4f2b-11e8-901e-ab5663477b80.png)

A [generated screenshot is available on vimcolors](https://vimcolors.com/989/meh/dark)
and may be more up to date.

## Some design choices

- The background is not fully black, and Normal text is not fully white to be
  easier on the eyes.
- Comments are greyed-out and italicized
- Returns are orange for easy scanning when you use early-return pattern
- Booleans, `super`, `this`, and constants stand out
- Strings are in blue since that is the color people most likely ignore
- Text is slightly brown, and everything else is a contrasted

## Implementation details

- As best as possible, the base Vim highlight groups and colorscheme specific
  groups are the only things that are actually assigned colors. Syntax
  specific highlight groups are links to those colors.
- The `hi` command is called directly instead of using Vim variables and
  functions to call it dynamically. It makes things harder to manage, but it
  loads much faster. I may consider statically compiling it in the future.
- I customize colors for the plugins I use or used in the past only. Feel free
  to fork if you want to add more.
- Support for vim-pandoc is provided via an autoload function that is called
  on demand by the provided plugin to properly override the built-in pandoc
  colors.
- Some other plugins are also customized, such as Neomake, showmarks, and
  vim-signature, but I might not be using those plugins at the moment so
  support may be limited.

## License

MIT
