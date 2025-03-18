return {
    "nvim-treesitter/nvim-treesitter",
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    event = "BufEnter",
    config = function(_, _)
        require("nvim-treesitter.configs").setup({
            -- A list of parser names, or "all"
            ensure_installed = { 
                "vimdoc", "javascript", "typescript", "c", "lua", "rust", "go",
                "python", "html", "css", "json", "yaml", "toml", "markdown", "comment"
            },
            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffers
            auto_install = true,
            highlight = {
                -- `false` will disable the whole extension
                enable = true,
                -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                -- Using this option may slow down your editor, and you may see some duplicate highlights.
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true },
        })
    end,
}