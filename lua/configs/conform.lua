local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    pug = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    python = { "ruff" },
    cpp = { "clang-format" },
  },

  formatters = {
    prettier = {
      command = "prettier", -- Uses global Prettier
      args = {
        "--stdin-filepath", "$FILENAME",
        "--plugin", "/data/data/com.termux/files/usr/lib/node_modules/@prettier/plugin-pug/dist/index.js",
      },
    },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 50000,
    lsp_fallback = true,
  },
}

return options
