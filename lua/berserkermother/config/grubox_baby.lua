-- Example config in Lua
vim.g.gruvbox_baby_function_style = "NONE"

-- Each highlight group must follow the structure:
-- ColorGroup = {fg = "foreground color", bg = "background_color", style = "some_style(:h attr-list)"}
-- See also :h highlight-guifg
-- Example:
-- vim.g.gruvbox_baby_highlights = {Normal = {fg = "#123123", bg = "NONE", style="underline"}}

-- Enable telescope theme
vim.g.gruvbox_baby_telescope_theme = 1

-- Enable transparent mode
-- vim.g.gruvbox_baby_transparent_mode = 0

-- Load the colorscheme
vim.cmd[[colorscheme gruvbox-baby]]
