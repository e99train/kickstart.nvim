return {
	'echasnovski/mini.nvim',
	version = false,
	config = function()
		require('mini.ai').setup()
		require('mini.bracketed').setup()
		require('mini.cursorword').setup()
		require('mini.move').setup()
		require('mini.pairs').setup()
		require('mini.splitjoin').setup()
		require('mini.surround').setup()
		-- require('mini.tabline').setup()
	end
}
