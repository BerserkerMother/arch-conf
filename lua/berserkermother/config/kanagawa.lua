-- Default options:
require('kanagawa').setup({
  commentStyle = { italic = true },
  keywordStyle = { italic = true },
  statementStyle = { bold = true },
  transparent = false,     -- do not set background color
  dimInactive = false,     -- dim inactive window `:h hl-NormalNC`
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa-dragon")
