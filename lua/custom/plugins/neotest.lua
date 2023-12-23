return {
  'nvim-neotest/neotest',
  dependencies = {
    'antoinemadec/FixCursorHold.nvim',
    'nvim-neotest/neotest-jest'
  },
  config = function()
    require('neotest').setup({
      adapters = {
        require('neotest-jest')({
          jestCommand = "npm test --",
          jestConfigFile = "custom.jest.config.ts",
          env = { CI = true },
          cwd = function(path)
            return vim.fn.getcwd()
          end,
        }),
      },
      discovery = {
        enabled = false,
      }
    })
    local run = require('neotest').run
    vim.keymap.set('n', '<leader>#n', run.run, { desc = 'Run nearest test' })
    vim.keymap.set('n', '<leader>#f', function() run.run(vim.fn.expand('%')) end, { desc = 'Run current test file' })
    local wk = require('which-key')
    wk.register({
      ['<leader>#'] = {
        name = '+tests'
      }
    })
  end
}
