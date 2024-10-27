vim.opt.background = "light"

-- Schedule colorscheme setup to run after all other settings
vim.schedule(function()
  vim.cmd('colorscheme PaperColor')
end)
