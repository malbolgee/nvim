return {
  'nanozuki/tabby.nvim',
  -- event = 'VimEnter', -- if you want lazy load, see below
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.o.showtabline = 2
    vim.opt.sessionoptions = 'curdir,folds,globals,help,tabpages,terminal,winsize'

    vim.api.nvim_set_keymap('n', '<leader>ta', ':$tabnew<CR>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<leader>tc', ':tabclose<CR>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<leader>to', ':tabonly<CR>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<leader>tn', ':tabn<CR>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<leader>tp', ':tabp<CR>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<leader>tmp', ':-tabmove<CR>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<leader>tmn', ':+tabmove<CR>', { noremap = true })
  end,
}
