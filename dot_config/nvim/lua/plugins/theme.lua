return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",
            transparent_background = false,
            background = {
                light = "latte",
                dark = "mocha",
            },
            compile = {
                enabled = true,
            },
            copilot = true,
            dim_inactive = {
                enabled = true,
            },
            integrations = {
                native_lsp = {
                    enabled = true,
                    -- virtual_text = {
                    --     errors = { "italic" },
                    --     hints = { "italic" },
                    --     warnings = { "italic" },
                    --     information = { "italic" },
                    -- },
                    -- underlines = {
                    --     errors = { "underline" },
                    --     hints = { "underline" },
                    --     warnings = { "underline" },
                    --     information = { "underline" },
                    -- },
                },
                telescope = {
                    enabled = true,
                },
                treesitter = true,
            },
        })
        vim.cmd([[colorscheme catppuccin]])
    end,
}
