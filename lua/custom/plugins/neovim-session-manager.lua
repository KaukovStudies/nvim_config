return {
  'Shatur/neovim-session-manager',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = function()
    vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
      callback = function()
        for _, buf in ipairs(vim.api.nvim_list_bufs()) do
          if vim.api.nvim_get_option_value('buftype', { buf = buf }) == 'nofile' then
            return
          end
        end

        require('session_manager').save_current_session()
      end,
    })
    return {
      autoload_mode = require('session_manager.config').AutoloadMode.CurrentDir,
    }
  end,
}
