-- lua/core/globals.lua
-- This file is used to define global variables and leader keys for Neovim.
-- Core principle: globals.lua should only set basic global configurations
-- and should not depend on other modules.

-- =============================
-- 1️⃣ Leader keys
-- =============================
-- Set the global leader key
vim.g.mapleader = " "          -- Space is the most common choice
vim.g.maplocalleader = "\\"    -- Local leader, can be customized per filetype

-- =============================
-- 2️⃣ Common global switches / variables
-- =============================
-- Enable debug mode (can be read in other modules)
-- vim.g.debug_mode = false

-- Enable enhanced logging
-- vim.g.enable_logging = true

-- User-defined paths or identifiers (extendable)
-- For example, cache directory
-- vim.g.cache_dir = vim.fn.stdpath("cache")

-- =============================
-- 3️⃣ Optional global flags
-- =============================
-- Other modules may use these flags to avoid reloading functionality
-- Example:
-- vim.g.loaded_some_module = true

-- =============================
-- 4️⃣ Future expansion
-- =============================
-- 1. You can define global state flags here
-- 2. You can define cross-module variables
-- 3. Do NOT place functions here; put them in utils.lua instead

