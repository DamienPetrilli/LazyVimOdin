-- File: ~/.config/nvim/lua/plugins/odin.lua

return {
  -- Treesitter configuration (unchanged)
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "odin" })
      end
    end,
  },

  -- Mason configuration (we'll keep this, but note that we're not using Mason to install OLS)
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      -- Remove 'ols' from ensure_installed if it was there before
      opts.ensure_installed = vim.tbl_filter(function(tool)
        return tool ~= "ols"
      end, opts.ensure_installed)
    end,
  },

  -- Updated LSP configuration
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ols = {
          cmd = { vim.fn.expand("~/ols/ols") },  -- Path to your OLS executable
        },
      },
      setup = {
        ols = function(_, opts)
          require("lspconfig").ols.setup(opts)
        end,
      },
    },
  },
}
