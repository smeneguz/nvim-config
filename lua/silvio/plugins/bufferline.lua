return {
    'akinsho/bufferline.nvim',
    branch = 'main',
    dependencies = 'nvim-tree/nvim-web-devicons',
    lazy = false,
    config = function()
        local bufferline = require("bufferline")
        bufferline.setup({
            options = {
                separator_style = "slant",
                diagnostics = "nvim_lsp",
                diagnostics_indicator = function(count, level)
                    local icon = level:match("error") and " " or ""
                    return icon .. " " .. count
                end,
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "center",
                        separator = true,
                    },
                    {
                        filetype = "undotree",
                        text = "Undo Tree",
                        text_align = "left",
                        separator = true
                    }
                },
            },
        })
    end,
    keys = {
        { "<A-Left>", "<cmd>BufferLineCyclePrev<cr>", desc = "Previous buffer" },
        { "<A-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Previous buffer" },
        { "<A-Right>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
        { "<A-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
        { "<S-A-Left>", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer left" },
        { "<S-A-Right>", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer right" },
        { 
            "<A-x>",
            function()
                local current = vim.fn.bufnr('%')
                vim.cmd('BufferLineCyclePrev')
                vim.cmd("bd " .. current)
            end,
            desc = "Close buffer"
        },
    }
}