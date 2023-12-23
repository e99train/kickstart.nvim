return {
	'ThePrimeagen/harpoon',
	branch = 'harpoon2',
	dependencies = {
		'nvim-lua/plenary.nvim'
	},
	config = function()
		local harpoon = require('harpoon')
		vim.keymap.set('n', '<leader>H', function() harpoon:list():append() end,
			{ desc = 'Append to harpoon list' })
		vim.keymap.set('n', '<C-m>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

		vim.keymap.set('n', '<C-h>', function() harpoon:list():select(1) end)
		vim.keymap.set('n', '<C-j>', function() harpoon:list():select(2) end)
		vim.keymap.set('n', '<C-k>', function() harpoon:list():select(3) end)
		vim.keymap.set('n', '<C-l>', function() harpoon:list():select(4) end)
	end
}
