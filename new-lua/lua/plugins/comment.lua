return {
  {
    "numToStr/Comment.nvim",
    lazy = false,
    config = function()
      -- Initialize the Comment plugin
      require("Comment").setup()

      -- ==========================================
      -- 📖 Usage Guide:
      -- ==========================================
      -- 1. Toggle line comment (add / remove):
      --    In Normal mode, press three keys consecutively: g c c
      --
      -- 2. Toggle visual/selection comment (add / remove):
      --    Press v to enter Visual mode, select multiple lines, then press: g c
      --
      -- 3. Toggle block comment:
      --    Press: g b c
      -- ==========================================
    end,
  },
}
