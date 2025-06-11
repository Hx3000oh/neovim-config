return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css", "javascript", "typescript",
        "cpp", "python", "json",
        "pug"
      },
    },
  },
  { "nvzone/volt",                   lazy = true },
  { "nvzone/menu",                   lazy = true },
  { "nvzone/minty",                  lazy = true },
  {
    "nvzone/typr",
    dependencies = "nvzone/volt",
    opts = {},
    cmd = { "Typr", "TyprStats" },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "html-lsp", "css-lsp", "typescript-language-server", "ruff", "tailwindcss-language-server",
        "emmet-language-server", "json-lsp"
      },
    }
  },
  {
    "hrsh7th/nvim-cmp"
  }
}
