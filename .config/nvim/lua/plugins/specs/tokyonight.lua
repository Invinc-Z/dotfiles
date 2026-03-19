return {
  "folke/tokyonight.nvim",
  lazy = false,     -- 启动立即加载
  priority = 1000,  -- 比其它插件更早
  config = function()
    require("plugins.config.tokyonight")
  end,
}

