return {
  "dhruvasagar/vim-table-mode",
  ft = { "markdown", "text" },
  keys = {
    { "<leader>tm", function() vim.cmd("TableModeToggle") end, desc = "Table Mode Toggle" },
  },
  config = function()
    require("plugins.config.vim-table-mode")
  end,
}
