return {
  'romgrk/barbar.nvim',
  version = '^1.0.0',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'lewis6991/gitsigns.nvim',
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  config = function()
    require('barbar').setup {
      opts = {},
    }

    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    -- Move to previous/next
    map('n', '<A-,>', ':BufferPrevious<CR>', opts)
    map('n', '<A-.>', ':BufferNext<CR>', opts)
    -- Re-order to previous/next
    map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
    map('n', '<A->>', ':BufferMoveNext<CR>', opts)
    -- Goto buffer in position...
    map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
    map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
    map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
    map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
    map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
    map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
    map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
    map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
    map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
    map('n', '<A-0>', ':BufferLast<CR>', opts)
    -- Pin/unpin buffer
    map('n', '<A-p>', ':BufferPin<CR>', opts)
    -- Close buffer
    map('n', '<A-c>', ':BufferClose<CR>', opts)
    -- Wipeout buffer
    --                 :BufferWipeout
    -- Close commands
    --                 :BufferCloseAllButCurrent
    --                 :BufferCloseAllButPinned
    --                 :BufferCloseAllButCurrentOrPinned
    --                 :BufferCloseBuffersLeft
    --                 :BufferCloseBuffersRight
    -- Magic buffer-picking mode
    map('n', '<C-p>', ':BufferPick<CR>', opts)
    -- Sort automatically by...
    map('n', '<leader>bb', ':BufferOrderByBufferNumber<CR>', opts)
    map('n', '<leader>bn', ':BufferOrderByName<CR>', opts)
    map('n', '<leader>bd', ':BufferOrderByDirectory<CR>', opts)
    map('n', '<leader>bl', ':BufferOrderByLanguage<CR>', opts)
    map('n', '<leader>bw', ':BufferOrderByWindowNumber<CR>', opts)
  end,
}
