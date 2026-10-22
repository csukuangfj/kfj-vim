return {
  {
    "delphinus/md-render.nvim",
    ft = "markdown",
    dependencies = {
      { "delphinus/budoux.lua", optional = true }, -- CJK换行优化
      { "nvim-tree/nvim-web-devicons", optional = true },
    },
    -- 删掉 config 里的 setup！只绑定快捷键
    keys = {
      { "<leader>md", "<Plug>(md-render-preview)", desc = "MdRender 悬浮预览" },
    },
    cmd = { "MdRender", "MdRenderDemo" },
  },
}
