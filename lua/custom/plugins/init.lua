return {
  -- Zen mode (modern replacement for Goyo + Limelight)
  {
    'folke/zen-mode.nvim',
    dependencies = { 'folke/twilight.nvim' },
    keys = {
      { ',g', '<cmd>ZenMode<CR>', desc = 'Toggle Zen Mode' },
    },
    opts = {
      window = { width = 100 },
      plugins = {
        twilight = { enabled = true },
        tmux = { enabled = true },
      },
    },
  },

  -- LaTeX support
  {
    'lervag/vimtex',
    ft = { 'tex', 'latex' },
    init = function()
      vim.g.vimtex_view_general_viewer = 'zathura'
      vim.g.vimtex_view_general_options = '--synctex-forward @line:@column:@tex @pdf'
      vim.g.tex_flavor = 'latex'
    end,
  },

  -- Rainbow delimiters (modern rainbow brackets)
  {
    'HiPhish/rainbow-delimiters.nvim',
    event = 'BufReadPost',
  },
}
