return {
  {
    "folke/which-key.nvim", -- dummy or standalone plugin spec wrapper for keymaps
    lazy = false,
    priority = 1000,
    config = function()
      local map = vim.keymap.set

      -- Set leader key to semicolon
      vim.g.mapleader = ";"

      -- Disable arrow keys in normal and insert modes
      map({ "n", "i" }, "<Up>", "<Nop>", { desc = "Disable Up arrow" })
      map({ "n", "i" }, "<Down>", "<Nop>", { desc = "Disable Down arrow" })
      map({ "n", "i" }, "<Left>", "<Nop>", { desc = "Disable Left arrow" })
      map({ "n", "i" }, "<Right>", "<Nop>", { desc = "Disable Right arrow" })

      -- Use jk to exit insert mode
      map("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

      -- File and buffer operations
      map("n", "<Leader>r", ":e!<CR>", { desc = "Reload current file" })
      map("n", "<Leader>w", ":w<CR>", { desc = "Save file" })
      map("n", "<Leader>;", ":", { desc = "Open command line" })
      map("n", "<C-n>", ":Neotree toggle<CR>", { desc = "Toggle file tree" })
    end,
  },
}
