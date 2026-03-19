return {
    "nvim-telescope/telescope.nvim",
    enabled = true,  -- false disable the plugin
    dependencies = {
        "nvim-lua/plenary.nvim",
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },

    keys = {
        { "<leader>ff", function() require("telescope.builtin").find_files() end, desc = "Find files" },
        { "<leader>fg", function() require("telescope.builtin").live_grep() end,  desc = "Live grep" },
        { "<leader>fb", function() require("telescope.builtin").buffers() end,    desc = "Buffers" },
        { "<leader>fh", function() require("telescope.builtin").help_tags() end,  desc = "Help tags" },
    },

    config = function()
        require("plugins.config.telescope")
    end,
}

