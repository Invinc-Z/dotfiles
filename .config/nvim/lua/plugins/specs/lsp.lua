-- LSP 相关插件声明
-- 这个文件只负责声明要安装哪些插件，具体配置在 lua/lsp/ 目录下

return {
  -- LSP 主体插件 - 提供与各种语言服务器通信的能力
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" }, -- 打开文件时才加载，加快启动速度
    dependencies = {
      -- Mason: LSP 服务器安装管理器（可视化界面，:Mason 打开）
      "williamboman/mason.nvim",
      -- Mason 和 lspconfig 的桥接插件
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      -- 加载 LSP 主配置
      require("lsp")
    end,
  },

  -- Mason 插件 - LSP/DAP/Linter/Formatter 安装器
  {
    "williamboman/mason.nvim",
    cmd = "Mason", -- 只在执行 :Mason 命令时加载
    build = ":MasonUpdate", -- 安装后自动更新
    opts = {
      ui = {
        border = "rounded", -- 窗口边框样式
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },
}
