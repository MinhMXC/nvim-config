local bundles = {
  vim.fn.glob(vim.fn.expand '~/.config/nvim/debuggers/com.microsoft.java.debug.plugin-0.53.2.jar', true),
}

local config = {
  cmd = { vim.fn.expand '~/.local/share/nvim/mason/bin/jdtls' },
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
  on_attach = function(client, bufnr)
    require('jdtls').setup_dap { hotcodereplace = 'auto' }
  end,
  init_options = {
    bundles = bundles,
  },
}
require('jdtls').start_or_attach(config)

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.relativenumber = true
vim.o.colorcolumn = '120'
vim.api.nvim_set_hl(0, 'ColorColumn', { fg = '#808080', bg = 'NONE' })
