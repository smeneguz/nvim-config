return {
    "David-Kunz/gen.nvim",
    lazy = false,
    config = function()
        local secrets = require("silvio.plugins.helpers.secrets")
        local ollama_url = secrets.get("OLLAMA_URL")
        local ollama_user = secrets.get("OLLAMA_USER")
        local ollama_password = secrets.get("OLLAMA_PASSWORD")
        
        local opts = {
            model = "mistral:7b",
            quit_map = "q",
            retry_map = "<c-r>",
            accept_map = "<c-cr>",
            display_mode = "float",
            show_prompt = false,
            show_model = true,
            no_auto_close = false,
            file = false,
            hidden = false,
            result_filetype = "markdown",
            debug = false
        }
        
        if ollama_url and ollama_user and ollama_password then
            opts.url = ollama_url
            opts.user = ollama_user
            opts.password = ollama_password
            opts.command = function(options)
                return "curl -u " ..
                    options.user .. ":" .. options.password .. " -q --silent --no-buffer -X POST " ..
                    options.url .. "/api/chat -d $body"
            end
            opts.list_models = function(options)
                local response = vim.fn.systemlist(
                    "curl -u " ..
                    options.user .. ":" .. options.password .. " -q --silent --no-buffer " .. options.url .. "/api/tags")
                local list = vim.fn.json_decode(response)
                local models = {}
                for key, _ in pairs(list.models) do
                    table.insert(models, list.models[key].name)
                end
                table.sort(models)
                return models
            end
        end
        
        require("gen").setup(opts)
    end,
    keys = {
        { "<leader>lgr", "<cmd>Gen Enhance_Grammar_Spelling<cr>", desc = "Enhance Grammar & Spelling", mode = { "n", "v" } },
    },
}