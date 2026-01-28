-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("plugins.color")
require("plugins.tmux")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.g.python3_host_prog = "/usr/bin/python3"

--[[require("nvim-treesitter").setup({
  ensure_installed = { "python", "bash" },
  highlight = {
    enable = true,
  },
})
]]
