-- This is my personal Nvim configuration supporting Mac, Linux and Windows, with various plugins configured.
-- This configuration evolves as I learn more about Nvim and become more proficient in using Nvim.
-- Since it is very long (more than 1000 lines!), you should read it carefully and take only the settings that suit you.
-- I would not recommend cloning this repo and replace your own config. Good configurations are personal,
-- built over time with a lot of polish.
--
-- Author: Zhuangzhuang Zhang
-- Email: zhuangzhuangzhang97@gmail.com
-- Blog: https://invinc-z.github.io/
-- GitHub: https://github.com/invinc-z

-- cache configuration to speed up neovim startup
vim.loader.enable()

-- check neovim version
local utils = require("utils")
local expected_version = "0.11.5"
utils.is_compatible_version(expected_version)

-- neovim core (without plugins)
require("core")

-- plugin System (lazy.nvim)
require("plugins")


-- local config_dir = vim.fn.stdpath("config")
---@cast config_dir string

-- some global settings
-- require("globals")
-- setting options in nvim
-- vim.cmd("source " .. vim.fs.joinpath(config_dir, "viml_conf/options.vim"))
-- various autocommands
-- require("custom-autocmd")
-- all the user-defined mappings
-- require("mappings")

-- all the plugins installed and their configurations
-- require("plugin_specs")

-- diagnostic related config
-- require("diagnostic-conf")

-- colorscheme settings
-- local color_scheme = require("colorschemes")

-- Load a random colorscheme
-- color_scheme.rand_colorscheme()
