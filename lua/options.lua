require "nvchad.options"

-- add yours here!

local o = vim.o
local opt = vim.opt

o.cursorlineopt = 'both' -- to enable cursorline
-- o.wrap = false           -- Disable Word Wrap
o.autoread = true        -- Read file again when it changes outside
o.autoindent = true


opt.wildmode = "list:full,full"
opt.wildmenu = true
