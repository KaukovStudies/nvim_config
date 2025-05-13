return {
  'OXY2DEV/markview.nvim',
  lazy = false,
  dependencies = {
    'saghen/blink.cmp',
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    preview = {
      icon_provider = 'devicons', -- 'internal', 'mini', 'devicons'
    },
  },
}
