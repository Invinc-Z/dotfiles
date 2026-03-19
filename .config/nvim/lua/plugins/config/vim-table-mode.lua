-- lua/plugins/config/vim-table-mode.lua

vim.g.table_mode_corner = '|'
vim.g.table_mode_header_fillchar = '='

-- 自动对齐表格
vim.g.table_mode_auto_align = 1

-- 表格格式化选项
vim.g.table_mode_tableize_d_map = '<Leader>td'
vim.g.table_mode_tableize_map = '<Leader>tt'

-- 注意：快捷键已移到 spec 文件的 keys 字段中，以便第一次加载时就能触发
