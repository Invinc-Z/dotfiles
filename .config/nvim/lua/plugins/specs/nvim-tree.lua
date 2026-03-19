return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons", -- 文件图标（可选但推荐）
    },
    -- 在插件加载前执行
    init = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        vim.opt.termguicolors = true
    end,
    config = function()
        require("plugins.config.nvim-tree")
    end,
}

