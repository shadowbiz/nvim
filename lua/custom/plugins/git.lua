function on_attach(bufnr)
  -- vim.keymap.set('n', '<leader>gp', require('gitsigns').prev_hunk,
  --   { buffer = bufnr, desc = '[G]o to [P]revious Hunk' })
  -- vim.keymap.set('n', '<leader>gn', require('gitsigns').next_hunk, { buffer = bufnr, desc = 'Go to Next Hunk' })
  -- vim.keymap.set('n', '<leader>ph', require('gitsigns').preview_hunk, { buffer = bufnr, desc = '[P]review [H]unk' })
end

local opts = {
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
  on_attach = on_attach,
}

return {
  {
    'tpope/vim-fugitive',
  },
  {
    'lewis6991/gitsigns.nvim',
    opts = opts,
  },
}
