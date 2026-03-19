return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function() vim.fn["mkdp#util#install"]() end,
  keys = {
    { "<leader>mp", function() vim.cmd("MarkdownPreview") end, desc = "Markdown Preview" },
    { "<leader>ms", function() vim.cmd("MarkdownPreviewStop") end, desc = "Markdown Preview Stop" },
    { "<leader>mt", function() vim.cmd("MarkdownPreviewToggle") end, desc = "Markdown Preview Toggle" },
  },
  config = function()
    require("plugins.config.markdown-preview")
  end,
}