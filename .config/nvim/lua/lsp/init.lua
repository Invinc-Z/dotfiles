-- LSP 入口：初始化 Mason + 加载语言配置
-- 通用能力（on_attach / capabilities / 诊断样式）在 lsp/common.lua

local common = require("lsp.common")

-- ============================================
-- 4. 初始化 Mason 并加载语言配置
-- ============================================
local function setup_lsp()
  require("mason").setup()

  require("mason-lspconfig").setup({
    ensure_installed = {
      "clangd", -- C/C++
      "marksman", -- Markdown
    },
    automatic_installation = true,
  })

  require("lsp.c") -- C/C++ (clangd)
  -- 后续添加语言时：
  require("lsp.markdown") -- Markdown (marksman)
end

-- 执行初始化
setup_lsp()

return common
