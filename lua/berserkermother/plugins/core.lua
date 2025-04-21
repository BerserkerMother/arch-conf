return {
  -- { 'prichrd/netrw.nvim',      opts = {} },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },
  { "ellisonleao/gruvbox.nvim" },
  { "rose-pine/neovim",        name = "rose-pine" },
  { 'luisiacc/gruvbox-baby' },
  { "Shatur/neovim-ayu" },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,    -- make sure we load this during startup if it is your main colorschem
    priority = 1000, -- make sure to load this before all the other start plugins},
  },
  {
    'goolord/alpha-nvim',
    config = function()
      require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
    end
  },
  { "savq/melange-nvim" },
  -- nvim tree
  { "nvim-tree/nvim-tree.lua" },
  {
    "stevearc/conform.nvim",
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
    "williamboman/mason.nvim",
    lazy = false,
  },
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp"
  },
  {
    'norcalli/nvim-colorizer.lua',
    laze = false,
    config = function()
      require 'colorizer'.setup({
        '*', -- apply to all file types
      })
    end
  },
  {
    "kdheepak/lazygit.nvim",
    lazy = false,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
    config = function()
      require("telescope").load_extension("lazygit")
    end,
  },
  { "nvim-telescope/telescope-fzy-native.nvim" },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  -- These are some examples, uncomment them if you want to see them work!
  { 'VonHeikemen/lsp-zero.nvim',               branch = 'v4.x' },
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/nvim-cmp' },
  {
    "nvim-treesitter/nvim-treesitter", },

  {
    "jiaoshijie/undotree",
    dependencies = "nvim-lua/plenary.nvim",
    laze = false,
    config = true,
    keys = { -- load the plugin only when using it's keybinding:
      { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
    },
  },

  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  {
    "terrortylor/nvim-comment",
    config = function()
      require("berserkermother.config.nvim_comment")
    end,
  },
  { 'numToStr/Comment.nvim', },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
}
