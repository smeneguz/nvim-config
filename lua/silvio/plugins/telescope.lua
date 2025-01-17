return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.3",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-media-files.nvim",
        "nvim-lua/popup.nvim"
    },
    cmd = "Telescope",
    config = function()
        local telescope = require("telescope")
        telescope.setup({
            defaults = {
                vimgrep_arguments = {
                    "rg",
                    "-L",
                    "--color=never",
                    "--no-heading",
                    "--with-filename",
                    "--line-number",
                    "--column",
                    "--smart-case",
                },
                prompt_prefix = "   ",
                selection_caret = "  ",
                entry_prefix = "  ",
                initial_mode = "insert",
                selection_strategy = "reset",
                sorting_strategy = "ascending",
                layout_strategy = "horizontal",
                layout_config = {
                    horizontal = {
                        prompt_position = "top",
                        preview_width = 0.55,
                        results_width = 0.8,
                    },
                    vertical = {
                        mirror = false,
                    },
                    width = 0.87,
                    height = 0.80,
                    preview_cutoff = 120,
                },
                file_sorter = require("telescope.sorters").get_fuzzy_file,
                file_ignore_patterns = { "node_modules" },
                generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
                path_display = { "truncate" },
                winblend = 0,
                border = {},
                borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
                color_devicons = true,
                set_env = { ["COLORTERM"] = "truecolor" },
            },
            extensions = {
                media_files = {
                    filetypes = { "png", "webp", "jpg", "jpeg" },
                    find_cmd = "rg"
                }
            },
        })
        telescope.load_extension("media_files")
    end,
    keys = {
        { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find git files" },
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
        { "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
        { "<leader>fm", "<cmd>Telescope media_files<cr>", desc = "Find media files" },
        { 
            "<leader>fb",
            function()
                require("telescope.builtin").current_buffer_fuzzy_find()
            end,
            desc = "Find in current buffer",
        },
    },
}