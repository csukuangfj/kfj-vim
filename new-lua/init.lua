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

-- ==================== Folding ====================
-- 折叠默认全部打开（tex 文件的折叠由 vim-tex-fold 提供 foldexpr）
vim.opt.foldlevelstart = 99    -- 打开文件时所有折叠默认展开
-- 折叠快捷键速查：
--   zR  打开当前缓冲区所有折叠        zM  关闭所有折叠
--   zo  打开光标处折叠（一层）         zc  关闭光标处折叠（一层）
--   zO  递归打开光标处折叠             zC  递归关闭光标处折叠
--   za  开关光标处折叠                 zE  删除窗口内所有手动折叠
--   zi  折叠总开关（启用/停用折叠）     zx  按 foldlevel 重算并更新折叠
--   zj  跳到下一个折叠开头             zk  跳到上一个折叠开头

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
