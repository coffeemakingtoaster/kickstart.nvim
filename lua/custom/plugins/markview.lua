return {
  {
    'OXY2DEV/markview.nvim',
    lazy = false,

    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },

    opts = {
      initial_state = false,
    },
    config = function(_, opts)
      require('markview').setup(opts)

      vim.keymap.set('n', '<leader>rm', function()
        vim.cmd 'Markview toggle'
      end, { silent = true, desc = 'Toggle [R]ender [M]arkdown' })
    end,
  },
}
