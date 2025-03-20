return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "debugloop/telescope-undo.nvim",
        "isak102/telescope-git-file-history.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        { "nvim-telescope/telescope-ui-select.nvim" },
    },
    lazy = false,
    opts = {
        pickers = {
            find_files = {
                hidden = true,
            },
            git_files = {
                hidden = true,
            },
        },
        defaults = {
            file_ignore_patterns = {
                "node_modules/*",
            },
            layout_strategy = "center",
        },
        extensions = {
            fzf = {},
            ['ui-select'] = {
                require('telescope.themes').get_dropdown(),
            },
        },
        picker = {
            find_files = {
                theme = "dropdown",
            },
        },
    },
    config = function(_, opts)
        require("telescope").setup(opts)
        require("telescope").load_extension("undo")
        require("telescope").load_extension("fzf")
        require("telescope").load_extension("git_file_history")
    end,
    keys = {
        { "<C-p>",      "<cmd>Telescope git_files<cr>",  desc = "Find git files" },
        { "<leader>fa", "<cmd>Telescope find_files<cr>", desc = "Find all files" },
        { "<leader>fi", "<cmd>Telescope live_grep<cr>",  desc = "Find in files" },
    },
}
