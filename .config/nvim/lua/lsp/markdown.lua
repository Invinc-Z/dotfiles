-- Markdown LSP 配置 (marksman)
-- 这是一个示例文件，展示如何添加新语言的 LSP
-- 如果你需要 Markdown 支持，请在 lsp/init.lua 中：
-- 1. 在 ensure_installed 中添加 "marksman"
-- 2. 取消注释 require("lsp.markdown")

local common = require("lsp.common")

-- ============================================
-- marksman 配置
-- ============================================
vim.lsp.config("marksman", {
  on_attach = common.on_attach,
  capabilities = common.capabilities,

  -- marksman 的文件类型
  filetypes = { "markdown", "markdown.mdx" },

  -- 项目根目录识别
  root_markers = { ".git", ".marksman.toml" },

  -- 单文件模式
  single_file_support = true,
})

vim.lsp.enable("marksman")

-- ============================================
-- Marksman 功能说明
-- ============================================
--[[
  Marksman 是专为 Markdown 设计的 LSP，提供：
  - 链接跳转（Ctrl+点击跳转到其他文件）
  - 标题补全
  - Wiki 链接支持
  - 文档大纲
  - 悬停预览（预览链接内容）
  - 引用查找

  启用步骤：
  1. 在 lsp/init.lua 的 ensure_installed 中添加 "marksman"
  2. 在 lsp/init.lua 末尾取消注释 require("lsp.markdown")
  3. 重启 Neovim 或 :Lazy reload

  快捷键同通用配置（gd/gr/K 等）
]]
