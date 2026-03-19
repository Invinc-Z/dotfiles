-- lua/plugins/config/tokyonight.lua

require("tokyonight").setup({
    style = "night",        -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
    light_style = "day",    -- The theme is used when the background is set to light
    transparent = false,     -- Enable this to disable setting the background color
    terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
    styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "dark",       -- style for sidebars, see below
        floats = "dark",         -- style for floating windows
    },
    day_brightness = 0.3,             -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
    dim_inactive = false,              -- dims inactive windows
    lualine_bold = false,              -- When `true`, section headers in the lualine theme will be bold
})
vim.cmd[[colorscheme tokyonight]]

