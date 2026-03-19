-- lua/plugins/config/nvim-markdown.lua

-- nvim-markdown 插件可能不需要特殊的 setup 调用
-- 如果 require("nvim-markdown") 失败，可以尝试注释掉下面的代码
-- require("nvim-markdown").setup({
--   -- 启用语法高亮
--   syntax_highlight = {
--     enable = true,
--   },
--   -- 启用折叠
--   folding = {
--     enable = true,
--   },
--   -- 列表自动补全
--   list_autocomplete = {
--     enable = true,
--   },
--   -- 链接处理
--   link = {
--     enable = true,
--   },
-- })

-- 简单的配置方式：设置全局变量
vim.g.nvim_markdown = {
  syntax_highlight = {
    enable = true,
  },
  folding = {
    enable = true,
  },
}
