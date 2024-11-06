require('ayu').setup({
  overrides = {
    ColorColumn = { bg = "#cddddd" },
    SignColumn = { bg = "#cddddd" },
    Normal = { bg = "None" },
  }
})

vim.cmd("colorscheme ayu-dark")
