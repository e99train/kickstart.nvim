return {
	'akinsho/bufferline.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		local bufferline = require('bufferline')
		bufferline.setup({
			options = {
				offsets = {
					{
						filetype = 'NvimTree',
						text = 'File Tree',
						highlight = 'Directory',
						separator = true,
					}
				},
				diagnostics = 'nvim_lsp',
				separator_style = 'slant',
			}
		})
	end
}
