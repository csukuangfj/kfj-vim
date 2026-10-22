return {
  {
    "simrat39/symbols-outline.nvim",
    lazy = false,
    config = function()
      -- Initialize symbols-outline plugin
      require("symbols-outline").setup()

      -- ==========================================
      -- 📖 Usage Guide:
      -- ==========================================
      -- 1. Toggle code outline sidebar (Open / Close):
      --    In Normal mode, press: ; o (Semicolon followed by o)
      --
      -- 2. Inside the outline window:
      --    - Press Enter on a symbol to jump to it.
      --    - Press q to close the outline.
      -- ==========================================
      vim.keymap.set("n", "<leader>o", "<cmd>SymbolsOutline<CR>", { desc = "Toggle code outline" })
    end,
  },
}
