local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
  {
    {
      "rebelot/kanagawa.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
    },
    {
      "nvim-tree/nvim-tree.lua",
      dependencies = {"nvim-tree/nvim-web-devicons"},
      lazy = false,
    },
    {
      "nvim-lualine/lualine.nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    {"nvim-treesitter/nvim-treesitter"},
    {"nvim-lua/plenary.nvim"},
    {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.8",
      dependencies = {"nvim-lua/plenary.nvim"}
    },
    {
      "williamboman/mason.nvim",
      config = function()
        require("mason").setup()
      end
    },
    {
      "williamboman/mason-lspconfig.nvim",
      config = function()
        require("mason-lspconfig").setup({
          ensure_installed = {"clangd"}
        })
      end
    },
    {
      "neovim/nvim-lspconfig",
      config = function()
        local lspconfig = require("lspconfig")
        lspconfig.clangd.setup({})
      end
    },
    {
      "hrsh7th/nvim-cmp"
    },
    {
      "L3MON4D3/LuaSnip",
      version = "v2.*",
      dependencies = {
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
      },
    }
  },{})
