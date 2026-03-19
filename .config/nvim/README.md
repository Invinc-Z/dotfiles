
## 文件目录
.
├── after
├── ftplugin
├── init.lua
├── lazy-lock.json
├── lua
│   ├── core
│   │   ├── autocmds.lua
│   │   ├── globals.lua
│   │   ├── init.lua
│   │   ├── keymaps.lua
│   │   └── options.lua
│   ├── plugins
│   │   ├── config
│   │   │   ├── markdown-preview.lua
│   │   │   ├── nvim-markdown.lua
│   │   │   ├── nvim-tree.lua
│   │   │   ├── telescope.lua
│   │   │   ├── tokyonight.lua
│   │   │   └── vim-table-mode.lua
│   │   ├── init.lua
│   │   ├── lazy.lua
│   │   └── specs
│   │       ├── markdown-preview.lua
│   │       ├── nvim-markdown.lua
│   │       ├── nvim-tree.lua
│   │       ├── telescope.lua
│   │       ├── tokyonight.lua
│   │       └── vim-table-mode.lua
│   └── utils
│       └── init.lua
└── README.md

9 directories, 23 files

## LSP 配置（当前方案）

你现在的 LSP 采用“插件声明与业务配置分离”的结构：

- `lua/plugins/specs/lsp.lua`：只声明 LSP 相关插件（`nvim-lspconfig` / `mason.nvim` / `mason-lspconfig.nvim` / `cmp-nvim-lsp`）
- `lua/lsp/init.lua`：LSP 入口（初始化 mason，并加载各语言配置）
- `lua/lsp/common.lua`：通用能力（诊断样式、快捷键、capabilities）
- `lua/lsp/c.lua`：C/C++ 专用配置（`clangd`）
- `lua/lsp/markdown.lua`：Markdown 示例配置（`marksman`，默认未启用）

### 先启用 C/C++

1. 打开 Neovim 后执行：
   - `:Lazy sync`
   - `:Mason`
2. 确认 `clangd` 已安装（`mason-lspconfig` 也会自动安装）。
3. 打开一个 `*.c` / `*.cpp` 文件，执行 `:LspInfo`，看到 `clangd` attached 即成功。

### 常用快捷键（LSP attach 后）

- `gd`：跳转定义
- `gr`：查看引用
- `K`：悬停文档
- `<leader>rn`：重命名
- `<leader>ca`：代码操作
- `[d` / `]d`：上一个/下一个诊断

### 后续扩展 Markdown

在 `lua/lsp/init.lua` 做两处改动：

1. `ensure_installed` 中加入 `"marksman"`
2. 取消注释 `require("lsp.markdown")`

即可启用 Markdown LSP。


