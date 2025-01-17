return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        {
            -- Using your mirrored repository
            "smeneguz/nvim-lsp-file-operations",
            dependencies = {
                "nvim-lua/plenary.nvim",
            }
        },
    },
    lazy = false,
    config = function()
        require("nvim-tree").setup({
            view = {
                width = 35,
                number = true,
                relativenumber = true,
            },
            filters = {
                dotfiles = false,
                custom = { "node_modules", "\\.git$" },
            },
            git = {
                enable = true,
                ignore = false,
            },
            actions = {
                open_file = {
                    quit_on_open = false,
                },
            },
            renderer = {
                icons = {
                    git_placement = "before",
                    diagnostics_placement = "signcolumn",
                    modified_placement = "after",
                    padding = " ",
                    symlink_arrow = " ➛ ",
                    glyphs = {
                        default = "",
                        symlink = "",
                        bookmark = "󰆤",
                        modified = "●",
                        folder = {
                            arrow_closed = "",
                            arrow_open = "",
                            default = "",
                            open = "",
                            empty = "",
                            empty_open = "",
                            symlink = "",
                            symlink_open = "",
                        },
                        git = {
                            unstaged = "✗",
                            staged = "✓",
                            unmerged = "",
                            renamed = "➜",
                            untracked = "★",
                            deleted = "",
                            ignored = "◌",
                        },
                    },
                },
            },
        })
        
        require("lsp-file-operations").setup({
            recursive_rename = true,
            autosave = true,
        })
    end,
    keys = {
        { "<C-n>", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file explorer" },
        { "<leader>e", "<cmd>NvimTreeFocus<CR>", desc = "Focus file explorer" },
    },
}