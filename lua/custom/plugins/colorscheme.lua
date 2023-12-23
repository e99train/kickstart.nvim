return {
	-- "sainnhe/gruvbox-material",
	-- priority = 1000,
	-- config = function()
	-- 	vim.o.background = "dark" -- or "light" for light mode
	-- 	vim.cmd("let g:gruvbox_material_background= 'hard'")
	-- 	vim.cmd("let g:gruvbox_material_transparent_background=2")
	-- 	vim.cmd("let g:gruvbox_material_diagnostic_line_highlight=1")
	-- 	vim.cmd("let g:gruvbox_material_diagnostic_virtual_text='colored'")
	-- 	vim.cmd("let g:gruvbox_material_enable_bold=1")
	-- 	vim.cmd("let g:gruvbox_material_enable_italic=1")
	-- 	vim.cmd([[colorscheme gruvbox-material]]) -- Set color scheme
	-- 	-- changing bg and border colors
	-- 	vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
	-- 	vim.api.nvim_set_hl(0, "LspInfoBorder", { link = "Normal" })
	-- 	vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
	-- end,


	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			background = {  -- :h background
				light = "latte",
				dark = "mocha",
			},
			transparent_background = false, -- disables setting the background color.
			show_end_of_buffer = false,  -- shows the '~' characters after the end of buffers
			term_colors = false,         -- sets terminal colors (e.g. `g:terminal_color_0`)
			dim_inactive = {
				enabled = false,           -- dims the background color of inactive window
				shade = "dark",
				percentage = 0.15,         -- percentage of the shade to apply to the inactive window
			},
			no_italic = false,           -- Force no italic
			no_bold = false,             -- Force no bold
			no_underline = false,        -- Force no underline
			styles = {                   -- Handles the styles of general hi groups (see `:h highlight-args`):
				comments = { "italic" },   -- Change the style of comments
				conditionals = { "italic" },
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
				operators = {},
			},
			color_overrides = {},
			custom_highlights = {},
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = false,
				mini = {
					enabled = true,
					indentscope_color = "",
				},
				mason = true,
				telescope = {
					enabled = true,
					-- style = "nvchad"
				},
				which_key = true,
				dap = {
					enabled = true,
					enable_ui = true
				},
				native_lsp = {
					enabled = true,
					virtual_text = {
						errors = { "italic" },
						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
					},
					underlines = {
						errors = { "underline" },
						hints = { "underline" },
						warnings = { "underline" },
						information = { "underline" },
					},
					inlay_hints = {
						background = true,
					},
				},
				fidget = true,
				indent_blankline = {
					enabled = true,
					scope_color = "text",
					colored_indent_levels = false
				},
				-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
			},
		})

		-- setup must be called before loading
		vim.cmd.colorscheme "catppuccin"
	end
}
