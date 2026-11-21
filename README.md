# laluz.nvim

A minimal monochrome colorscheme for Neovim. Grayscale only: hierarchy comes from brightness, bold, italic and underline instead of hue.

## Features

- Treesitter, LSP semantic tokens and classic syntax groups
- Diagnostics, diff and spell highlights
- [mini.nvim](https://github.com/nvim-mini/mini.nvim) integration (statusline, tabline, jump2d, indentscope, diff, cursorword)
- Integrated terminal colors

## Installation

With `vim.pack` (Neovim 0.12+):

```lua
vim.pack.add({ "https://github.com/imjoe-dev/laluz.nvim" })
vim.cmd.colorscheme("laluz")
```

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "imjoe-dev/laluz.nvim",
  lazy = false,
  priority = 1000,
  config = function() vim.cmd.colorscheme("laluz") end,
}
```

## Palette

| Name      | Hex       |
|-----------|-----------|
| bg        | `#0c0c0d` |
| bg_alt    | `#161618` |
| bg_float  | `#1b1b1e` |
| selection | `#2e2e33` |
| comment   | `#56565c` |
| dim       | `#7e7e85` |
| soft      | `#96969c` |
| mid       | `#aeaeb3` |
| fg        | `#c2c2c6` |
| white     | `#d2d2d5` |

## License

MIT
