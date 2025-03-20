local prettier = { "prettierd", "prettier", stop_after_first = true }

return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			javascript = prettier,
			typescript = prettier,
			javascriptreact = prettier,
			typescriptreact = prettier,
			css = prettier,
			graphql = prettier,
			html = prettier,
			json = { "prettierd", "prettier", "jq", stop_after_first = true },
			json5 = prettier,
			jsonc = prettier,
			yaml = prettier,
			lua = { "stylua" },
			markdown = { "injected" },
			["_"] = { "trim_whitespace", "trim_newlines" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
