-- lua/core/keymaps.lua
-- This file is used to define key mappings in Neovim.
-- Core principle: define global keymaps, use leader keys, and keep mappings plugin-independent.

local opts = { noremap = true, silent = true }  -- default options for most keymaps

-- =============================
-- Shortcuts for saving and quitting
-- =============================
-- Save current file
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file", unpack(opts) })

-- Quit current window
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit window", unpack(opts) })

-- Save and quit
vim.keymap.set("n", "<leader>x", "<cmd>wq<CR>", { desc = "Save and quit", unpack(opts) })

-- Force quit without saving
vim.keymap.set("n", "<leader>Q", "<cmd>q!<CR>", { desc = "Force quit", unpack(opts) })

-- =============================
-- Buffer management
-- =============================
-- Go to previous buffer
vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<CR>", { desc = "Previous buffer", unpack(opts) })

-- Go to next buffer
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Next buffer", unpack(opts) })

-- Close current buffer
vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete buffer", unpack(opts) })

-- =============================
-- Editing improvements
-- =============================
-- Toggle relative line numbers
vim.keymap.set("n", "<leader>rn", "<cmd>set relativenumber!<CR>", { desc = "Toggle relative numbers", unpack(opts) })

-- Clear search highlights
vim.keymap.set("n", "<leader>nh", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight", unpack(opts) })

-- Move selected lines up/down in visual mode
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down", unpack(opts) })
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up", unpack(opts) })

-- =============================
-- Notes for future expansion
-- =============================
-- 1. Add more mappings as needed, keep them organized by category
-- 2. Avoid plugin-specific mappings here; place them in plugin config
-- 3. Use <leader> for global mappings to avoid conflict with default keys

