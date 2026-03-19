-- lua/core/options.lua
-- This file is used to set Neovim options using vim.o, vim.wo, vim.bo, and vim.opt.
-- Core principle: only set basic Neovim options here, no keymaps or plugin configs.

-- =============================
-- 1️⃣ Basic editor behavior
-- =============================
vim.o.encoding = "utf-8"             -- Set global encoding to UTF-8
vim.o.fileencoding = "utf-8"         -- File encoding for written files
vim.o.hidden = true                   -- Enable background buffers
vim.o.backup = false                  -- Do not create backup files
vim.o.writebackup = false             -- Do not create write backup
vim.o.swapfile = false                -- Disable swap file

-- =============================
-- 2️⃣ UI and display
-- =============================
vim.o.number = true                   -- Show absolute line numbers
vim.o.relativenumber = true           -- Show relative line numbers
vim.o.cursorline = true               -- Highlight the current line
vim.o.termguicolors = true            -- Enable 24-bit RGB colors
vim.o.signcolumn = "yes"              -- Always show sign column (e.g., for LSP)
vim.o.showmode = true                 -- Don't show mode (handled by statusline plugin)
vim.o.showcmd = true                  -- Show partial commands in status line
vim.o.cmdheight = 1                    -- Height of command line
vim.o.pumheight = 10                   -- Max height of popup menu

-- =============================
-- 3️⃣ Search behavior
-- =============================
vim.o.ignorecase = true               -- Ignore case when searching
vim.o.smartcase = true                -- Override ignorecase if search contains uppercase
vim.o.incsearch = true                -- Show match as you type
vim.o.hlsearch = true                 -- Highlight search matches

-- =============================
-- 4️⃣ Editing behavior
-- =============================
vim.o.expandtab = true                -- Convert tabs to spaces
vim.o.tabstop = 4                     -- Number of spaces per tab
vim.o.shiftwidth = 4                  -- Number of spaces for autoindent
vim.o.softtabstop = 4                 -- Number of spaces for editing
vim.o.smartindent = true              -- Enable smart indentation
vim.o.autoindent = true               -- Copy indent from current line
vim.o.wrap = false                     -- Disable line wrap
vim.o.scrolloff = 8                   -- Keep 8 lines above/below cursor
vim.o.sidescrolloff = 8               -- Keep 8 columns left/right of cursor
vim.o.splitbelow = true               -- Horizontal splits go below
vim.o.splitright = true               -- Vertical splits go right

-- =============================
-- 5️⃣ Clipboard & mouse
-- =============================
vim.o.clipboard = "unnamedplus"       -- Use system clipboard
vim.o.mouse = "a"                      -- Enable mouse support

-- =============================
-- 6️⃣ Folding
-- =============================
vim.o.foldmethod = "expr"             -- Use expression folding (can be customized by treesitter later)
vim.o.foldexpr = "nvim_treesitter#foldexpr()"  -- Fold using treesitter if available
vim.o.foldlevel = 99                  -- Open all folds by default

-- =============================
-- 7️⃣ Timeout settings
-- =============================
vim.o.timeout = true                   -- Enable timeout for mapped sequences
vim.o.timeoutlen = 300                 -- Time in ms to wait for a mapped sequence

-- =============================
-- 8️⃣ Swap, undo & history
-- =============================
vim.o.undofile = true                  -- Enable persistent undo
vim.o.undodir = vim.fn.stdpath("cache") .. "/undo"  -- Directory for undo files
vim.o.history = 200                     -- Command history length

-- =============================
-- 9️⃣ Performance / other
-- =============================
vim.o.lazyredraw = true                -- Redraw only when needed
vim.o.updatetime = 300                 -- Faster completion / CursorHold events
vim.o.shortmess = vim.o.shortmess .. "c"  -- Don't show completion messages

-- =============================
-- 10️⃣ Notes for future expansion
-- =============================
-- 1. You can add more global options here as needed
-- 2. Keep plugin-specific options in plugin configs, not here
-- 3. This file should remain safe to load without plugins

