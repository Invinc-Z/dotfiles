-- blink.cmp 插件声明

return {
  {
    "saghen/blink.cmp",
    version = "*",
    dependencies = { "rafamadriz/friendly-snippets" },
    opts = require("plugins.config.blink"),
    opts_extend = { "sources.default" },
  },
}
