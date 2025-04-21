local telescope = require("telescope")

-- telescope.load_extension('fzy_native')
telescope.setup({
  defaults = {
    theme = "ivy",                -- Set the default theme to 'ivy'
    layout_strategy = "bottom_pane", -- Ivy theme typically uses bottom_pane layout
    preview = true,
    layout_config = {
      height = 100, -- Full height
      width = 200, -- Full width
    },
    sorting_strategy = "ascending", -- Display results in ascending order
    prompt_prefix = "search: ", -- Customize the prompt symbol
    selection_caret = "➜ ", -- Customize the selection indicator
    winblend = 10, -- Set transparency level (optional)
    border = false,
    borderchars = {
      prompt = { "─", " ", " ", " ", "─", "─", " ", " " },
      results = { " " },
      preview = { " " },
    },
  },
  pickers = {
    find_files = {
      find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
    }
  },
  mappings = {
    n = { ["q"] = require("telescope.actions").close },
    i = {
      ["<C-j>"] = require("telescope.actions").move_selection_next,     -- Move selection down
      ["<C-k>"] = require("telescope.actions").move_selection_previous, -- Move selection up
      ["<C-q>"] = require("telescope.actions").send_to_qflist,          -- Send selected to quickfix list
    },
  },
})
