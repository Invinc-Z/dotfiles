-- C/C++ LSP 配置 (clangd)
-- 这个文件只负责配置 clangd 的个性化设置

local common = require("lsp.common") -- 加载通用配置，避免循环依赖

-- ============================================
-- clangd 特定配置
-- ============================================
vim.lsp.config("clangd", {
  -- 使用通用的 on_attach 和 capabilities
  on_attach = common.on_attach,
  capabilities = common.capabilities,

  -- clangd 特有的启动参数
  cmd = {
    "clangd",
    "--background-index", -- 后台建立索引，提升性能
    "--clang-tidy", -- 启用 clang-tidy（代码检查）
    "--header-insertion=iwyu", -- 自动插入头文件
    "--completion-style=detailed", -- 详细的补全信息
    "--function-arg-placeholders", -- 函数参数占位符
    "--fallback-style=llvm", -- 代码风格
  },

  -- 初始化选项
  init_options = {
    usePlaceholders = true, -- 使用占位符
    completeUnimported = true, -- 补全未导入的符号
    clangdFileStatus = true, -- 显示文件状态
  },

  -- 文件类型
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },

  -- 项目根目录识别
  -- clangd 会从这些文件判断项目根目录
  root_markers = {
    ".clangd",
    ".clang-tidy",
    ".clang-format",
    "compile_commands.json",
    "compile_flags.txt",
    "configure.ac",
    ".git"
  },

  -- 单文件模式支持
  single_file_support = true,
})

vim.lsp.enable("clangd")

-- ============================================
-- 使用提示
-- ============================================
--[[
  安装完成后，打开任意 .c 或 .cpp 文件，LSP 会自动启动。

  常用命令：
  - :Mason          打开 Mason 界面，查看/安装/卸载 LSP
  - :LspInfo        查看当前 buffer 的 LSP 状态
  - :LspRestart     重启 LSP 服务器
  - :LspLog         查看 LSP 日志（调试用）

  快捷键（在 C/C++ 文件中）：
  - gd              跳转到定义
  - gr              查看所有引用
  - K               显示函数/变量文档
  - <leader>rn      重命名变量/函数
  - <leader>ca      代码操作（如自动修复）
  - <leader>f       格式化代码
  - [d / ]d         上一个/下一个错误
  - <leader>e       显示当前行的错误详情

  提高准确性的技巧：
  1. 在项目根目录生成 compile_commands.json：
     - CMake 项目：cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 .
     - Make 项目：使用 bear -- make
  2. 创建 .clangd 文件配置项目特定设置
  3. 使用 .clang-format 统一代码风格

  故障排查：
  - 如果 LSP 没启动：检查 :LspInfo
  - 如果提示不准确：确认是否有 compile_commands.json
  - 如果卡顿：检查项目规模，考虑调整 clangd 参数
]]
