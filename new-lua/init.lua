-- ==================== 1. Basic Options & Leader Key ====================
vim.g.mapleader = ";"          -- MUST be set BEFORE loading lazy.nvim
vim.g.maplocalleader = ";"

vim.opt.number = true          -- Show line numbers
vim.opt.relativenumber = true  -- Relative line numbers
vim.opt.expandtab = true       -- Convert tabs to spaces
vim.opt.shiftwidth = 4         -- Indentation width
vim.opt.tabstop = 4            -- Tab width
vim.opt.smartindent = true     -- Smart auto-indenting
vim.opt.termguicolors = true   -- Enable 24-bit RGB colors
vim.opt.cursorline = true      -- Highlight current line

-- ==================== 2. Bootstrap lazy.nvim ====================
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- ==================== 3. Setup Plugins ====================
require("lazy").setup({
  spec = {
    { import = "plugins" }, -- Automatically import plugins from lua/plugins/
  },
  defaults = { lazy = false },
})
