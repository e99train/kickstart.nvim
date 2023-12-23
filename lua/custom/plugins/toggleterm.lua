return {
	'akinsho/toggleterm.nvim',
	version = "*",
	config = true,
	keys = {
		{
			'<leader>tt',
			function()
				require('toggleterm').toggle()
			end,
			mode = 'n',
			desc = 'Toggle term'
		}
	}
}
