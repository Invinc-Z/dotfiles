-- lua/core/autocmds.lua
-- This file is used to define autocommands in Neovim.
-- Core principle: keep it plugin-independent and organized by functionality.

-- =============================
-- 1️⃣ Highlight on yank
-- =============================
vim.api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
    end,
    desc = "Highlight yanked text",
})

-- =============================
-- 2️⃣ Remove trailing whitespace on save
-- =============================
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        local save_cursor = vim.fn.getpos(".")  -- Save current cursor position
        vim.cmd([[%s/\s\+$//e]])                -- Remove trailing whitespace
        vim.fn.setpos(".", save_cursor)         -- Restore cursor position
    end,
    desc = "Trim trailing whitespace before saving",
})

-- =============================
-- 3️⃣ Restore cursor position when reopening a file
-- =============================
vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = "*",
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local line = mark[1]
        if line > 0 and line <= vim.api.nvim_buf_line_count(0) then
            vim.api.nvim_win_set_cursor(0, mark)
        end
    end,
    desc = "Restore cursor position on file open",
})

-- =============================
-- 4️⃣ Filetype-specific settings (optional example)
-- =============================
vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        vim.bo.shiftwidth = 4
        vim.bo.tabstop = 4
    end,
    desc = "Set python indentation",
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "c,cpp",
    callback = function()
        vim.bo.shiftwidth = 4
        vim.bo.tabstop = 4
    end,
    desc = "Set C/C++ indentation",
})

-- =============================
-- 5️⃣ Highlight cursor line only in active window
-- =============================
vim.api.nvim_create_autocmd({"WinEnter"}, {
    pattern = "*",
    callback = function()
        vim.wo.cursorline = true
    end,
})

vim.api.nvim_create_autocmd({"WinLeave"}, {
    pattern = "*",
    callback = function()
        vim.wo.cursorline = false
    end,
})

-- =============================
-- 6️⃣ Auto read file if changed outside
-- =============================
vim.api.nvim_create_autocmd({"FocusGained", "BufEnter"}, {
    pattern = "*",
    command = "checktime",
    desc = "Auto read file when changed outside",
})

-- =============================
-- 7️⃣ Notes for future expansion
-- =============================
-- 1. You can add more autocmds by category (yank, save, filetype, window, etc.)
-- 2. Keep plugin-specific autocmds in plugin config
-- 3. Use callbacks instead of string commands where possible

