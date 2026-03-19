-- lua/plugins/config/markdown-preview.lua

vim.g.mkdp_auto_start = 0  -- 不自动启动预览
vim.g.mkdp_auto_close = 1  -- 切换缓冲区时自动关闭预览
vim.g.mkdp_refresh_slow = 0  -- 快速刷新
vim.g.mkdp_command_for_global = 0  -- 仅对 markdown 文件生效
vim.g.mkdp_open_to_the_world = 0  -- 仅本地访问
vim.g.mkdp_open_ip = ''
vim.g.mkdp_browser = 'firefox'
vim.g.mkdp_echo_preview_url = 1  -- 在命令行显示预览URL
vim.g.mkdp_page_title = '${name}'
vim.g.mkdp_filetypes = { 'markdown' }
vim.g.mkdp_theme = 'dark'  -- 暗色主题

-- 注意：快捷键已移到 spec 文件的 keys 字段中，以便第一次加载时就能触发
