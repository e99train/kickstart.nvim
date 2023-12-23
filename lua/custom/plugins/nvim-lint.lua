return {
	{
		'mfussenegger/nvim-lint',
		config = function()
			local lint = require('lint')
			lint.linters_by_ft = {
				javascript = { 'standardjs', 'eslint' }
			}

			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},
	{
		'stevearc/conform.nvim',
		event = { 'BufWritePre' },
		cmd = { 'ConformInfo' },
		keys = {
			{
				'<leader>cf',
				function()
					require('conform').format({ async = true, lsp_fallback = true })
				end,
				mode = '',
				desc = 'Format buffer',
			},
		},
		opts = {
			formatters_by_ft = {
				lua = { 'stylua' },
				javascript = { { 'standardjs', 'eslint' } }
			},
			format_on_save = { timeout_ms = 500, lsp_fallback = true },
			formatters = {
				shfmt = {
					prepend_args = { '-i', '2' }
				}
			}
		},
		init = function()
			vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
		end,
	}
}
