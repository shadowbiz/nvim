vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'neovim/nvim-lspconfig',
  -- Autocompletion
  'hrsh7th/nvim-cmp',
  -- Snippet Engine & its associated nvim-cmp source
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',

  {
    "j-hui/fidget.nvim",
    tag = "legacy",
    event = "LspAttach",
    opts = { },
  },
  -- cmp LSP completion
  "hrsh7th/cmp-nvim-lsp",
  -- cmp Snippet completion
  "hrsh7th/cmp-vsnip",

  -- cmp Path completion
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-buffer",
  -- -- Adds a number of user-friendly snippets
  -- 'rafamadriz/friendly-snippets',
  -- See hrsh7th other plugins for more great completion sources!
  -- Snippet engine
  'hrsh7th/vim-vsnip',
  -- Adds extra functionality over rust analyzer
  'simrat39/rust-tools.nvim',
  -- {
  --   'nvimdev/lspsaga.nvim',
  --   config = function()
  --     require('lspsaga').setup({})
  --   end,
  --   dependencies = {
  --     'nvim-treesitter/nvim-treesitter', -- optional
  --     'nvim-tree/nvim-web-devicons',     -- optional
  --   }
  -- },
  --
  { "folke/neodev.nvim", opts = {} },
  { import = 'custom.plugins' },
}, {})

require "custom.configs"

