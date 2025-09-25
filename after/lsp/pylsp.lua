vim.lsp.config('pylsp', {
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = { 'E501', 'W504' },
          maxLineLength = 120,
        },
      },
    },
  },
})
