return {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
        require("peek").setup({
            auto_load = true,
            update_on_change = true,
            app = 'default',
            filetype = { 'markdown' },
            theme = 'dark',
        })
        vim.api.nvim_create_user_command("MarkdownPreviewToggle", function()
            local peek = require("peek")
            if not peek.is_open() then
                if vim.bo[vim.api.nvim_get_current_buf()].filetype == 'markdown' then
                    peek.open()
                end
            else
                peek.close()
            end
        end, {})
        vim.api.nvim_create_user_command("MarkdownPreviewClose", require("peek").close, {})
    end,
    keys = {
        { "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle markdown preview" },
    }
}