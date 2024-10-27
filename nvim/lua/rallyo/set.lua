

local function set_tab_size(size)
    vim.opt.tabstop = size
    vim.opt.softtabstop = size
    vim.opt.shiftwidth = size
end

vim.api.nvim_create_augroup('FileTypeSpecificTabSize', { clear = true }) 
vim.api.nvim_create_autocmd('FileType', {
  group = 'FileTypeSpecificTabSize',
  pattern = {'javascript', 'typescript', 'typescriptreact' },
  callback = function()
    set_tab_size(2)
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  group = 'FileTypeSpecificTabSize',
  pattern = {'go'},
  callback = function()
    set_tab_size(8)
  end,
})

-- Copilot
vim.keymap.set('i', '<C-]>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
vim.keymap.set('i', '<C-J>', 'copilot#Suggest() . "\\<Ignore>"', {
  expr = true,
  replace_keycodes = false
})
vim.g.copilot_no_tab_map = true


vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.smartindent = true

vim.opt.mouse = "c"

vim.opt.wrap = false

vim.g.mapleader = " "
