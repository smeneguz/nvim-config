return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        -- use default settings
    },
    cmd = "TroubleToggle",
    keys = {
        { "<leader>vD", "<cmd>TroubleToggle<cr>", desc = "Diagnostic Summary" },
    }
}