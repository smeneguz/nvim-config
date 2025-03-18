require("silvio.set")
require("silvio.remap")

-- Load secrets
local secrets_path = vim.fn.expand("~/.config/nvim/lua/silvio/plugins/helpers/secrets.lua")
if vim.fn.filereadable(secrets_path) == 1 then
    local secrets = require("silvio.plugins.helpers.secrets")
    secrets.load_secrets()
end

-- Initialize lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("silvio.plugins", {
    defaults = {
        lazy = true,
    },
    change_detection = {
        notify = false,
    },
    performance = {
        rtp = {
            disabled_plugins = {
                "gzip",
                "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
            },
        },
    },
})