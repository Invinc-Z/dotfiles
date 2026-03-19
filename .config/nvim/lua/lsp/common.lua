-- LSP 通用配置（可被各语言配置复用）

local M = {}

-- ============================================
-- 1. 诊断样式配置（错误/警告怎么显示）
-- ============================================
vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    source = "if_many",
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.INFO] = " ",
      [vim.diagnostic.severity.HINT] = " ",
    },
  },
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

-- ============================================
-- 2. 通用快捷键配置函数
-- ============================================
M.on_attach = function(client, bufnr)
  local function buf_keymap(mode, lhs, rhs, desc)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = "LSP: " .. desc })
  end

  buf_keymap("n", "gd", vim.lsp.buf.definition, "跳转到定义")
  buf_keymap("n", "gD", vim.lsp.buf.declaration, "跳转到声明")
  buf_keymap("n", "gi", vim.lsp.buf.implementation, "跳转到实现")
  buf_keymap("n", "gr", vim.lsp.buf.references, "查看引用")
  buf_keymap("n", "gt", vim.lsp.buf.type_definition, "跳转到类型定义")

  buf_keymap("n", "K", vim.lsp.buf.hover, "显示悬停文档")
  buf_keymap("n", "<C-k>", vim.lsp.buf.signature_help, "显示函数签名")

  buf_keymap("n", "<leader>rn", vim.lsp.buf.rename, "重命名")
  buf_keymap("n", "<leader>ca", vim.lsp.buf.code_action, "代码操作")
  buf_keymap("n", "<leader>f", function()
    vim.lsp.buf.format({ async = true })
  end, "格式化代码")

  buf_keymap("n", "[d", vim.diagnostic.goto_prev, "上一个诊断")
  buf_keymap("n", "]d", vim.diagnostic.goto_next, "下一个诊断")
  buf_keymap("n", "<leader>e", vim.diagnostic.open_float, "显示诊断浮窗")
  buf_keymap("n", "<leader>q", vim.diagnostic.setloclist, "诊断列表")

  if client.server_capabilities.documentHighlightProvider then
    local highlight_group = vim.api.nvim_create_augroup("lsp_document_highlight", { clear = false })
    vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
      buffer = bufnr,
      group = highlight_group,
      callback = vim.lsp.buf.document_highlight,
    })
    vim.api.nvim_create_autocmd("CursorMoved", {
      buffer = bufnr,
      group = highlight_group,
      callback = vim.lsp.buf.clear_references,
    })
  end
end

-- ============================================
-- 3. Capabilities 配置（LSP 能力）
-- ============================================
M.capabilities = vim.lsp.protocol.make_client_capabilities()

local has_blink, blink = pcall(require, "blink.cmp")
if has_blink and blink.get_lsp_capabilities then
  M.capabilities = blink.get_lsp_capabilities(M.capabilities)
end

M.capabilities.offsetEncoding = { "utf-16" }

return M
