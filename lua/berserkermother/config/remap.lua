vim.g.mapleader = " "
vim.keymap.set("n", "<C-n>", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", ":w<CR>")

-- telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fw', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })

-- nvim comment
require("nvim_comment").setup {
  -- Linters prefer comment and line to have a space in between markers
  marker_padding = true,
  -- should comment out empty or whitespace only lines
  comment_empty = true,
  -- trim empty comment whitespace
  comment_empty_trim_whitespace = true,
  -- Should key mappings be created
  create_mappings = true,
  -- Normal mode mapping left hand side
  line_mapping = "gcc",
  -- Visual/Operator mapping left hand side
  operator_mapping = "gc",
  -- text object mapping, comment chunk,,
  comment_chunk_text_object = "ic",
  -- Hook function to call before commenting takes place
  hook = nil,
}

-- Harpoon
local harpoon = require "harpoon"

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end)
vim.keymap.set("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<C-1>", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<C-2>", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<C-3>", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<C-4>", function()
  harpoon:list():select(4)
end)
vim.keymap.set("n", "<C-5>", function()
  harpoon:list():select(5)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function()
  harpoon:list():prev()
end)
vim.keymap.set("n", "<C-S-N>", function()
  harpoon:list():next()
end)

-- Move selected line(s) down
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==')

-- Move visual-selected lines down/up
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv")

-- comment
vim.api.nvim_set_keymap('n', '<space>/', '<Plug>(comment_toggle_linewise_current)', { noremap = false, silent = true })
vim.api.nvim_set_keymap('v', '<space>/', '<Plug>(comment_toggle_linewise_visual)', { noremap = false, silent = true })

-- open term
vim.keymap.set('n', '<leader>ll', ":term<CR>")
