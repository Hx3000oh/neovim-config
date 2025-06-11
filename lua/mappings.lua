require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({ "n", "i" }, "<C-t>", function()
  require("menu").open('default')
end, { desc = "Menu" })

map("n", "<M-f>", "<cmd> FZF <cr>", { desc = "FZF File Finder" })

map("n", "<leader>r", function()
  require("nvchad.term").runner {
    id = "skk",
    pos = "sp",
    clear_cmd = false,
    cmd = function()
      local file = vim.fn.expand "%"
      local cfile = vim.fn.expand "%:r"

      local ft_cmds = {
        python = "python " .. file .. "; exit",
        cpp = "g++ " .. file .. " -o " .. cfile .. " && ./" .. cfile .. "; exit",
        javascript = "node " .. file .. "; exit"
      }

      return ft_cmds[vim.bo.ft]
    end
  }
end)
