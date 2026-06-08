vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

require("lazy").setup({
    {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
    }
})

vim.lsp.config("clangd", {
	cmd = { "clangd" },
    filetypes = {"c","cpp","objc","objcpp"},
})
vim.lsp.enable("clangd")


-- Comment these if you do not have telescope.
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})

vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.laststatus = 3

vim.api.nvim_set_hl(0, "LineNr", { fg = "#4f4f4f" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ababab", bold = true })

vim.api.nvim_set_hl(0, "StatusLine", {
  fg = "#ffffff",
  bg = "#3b3b3b",
})

vim.api.nvim_set_hl(0, "StatusLineNC", {
  fg = "#666666",
  bg = "#1a1a1a",
})

vim.opt.statusline = "%f %= %l:%c %p%%"
-- vim.cmd("colorscheme vscode")
