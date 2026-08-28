return {
  -- Modern commenting plugin (replaces nerdcommenter)
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },

  -- Indentation guides (replaces indent-guides / indentLine)
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },

  -- Modern code formatter (replaces vim-codefmt)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        cpp = { "clang-format" },
        rust = { "rustfmt" },
      },
    },
  },

  -- If you still want to keep your custom LaTeX fold plugin from GitHub:
  {
    "csukuangfj/vim-tex-fold",
  },
}
