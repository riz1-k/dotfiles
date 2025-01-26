return {
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup {
        mappings = {
          basic = true, -- Includes `gc` mappings
          extra = true, -- Includes `gb` mappings
          extended = false, -- Only for block comments
        },
      }

      -- Map <leader>/ to toggle comments in normal and visual modes
      vim.keymap.set('n', '<leader>/', function()
        return vim.v.count == 0 and "<CMD>lua require('Comment.api').toggle.linewise.current()<CR>"
          or "<CMD>lua require('Comment.api').toggle.linewise.count(vim.v.count)<CR>"
      end, { noremap = true, silent = true, expr = true, desc = 'Toggle comment' })

      vim.keymap.set('x', '<leader>/', "<ESC><CMD>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", {
        noremap = true,
        silent = true,
        desc = 'Toggle comment',
      })
    end,
  },
}
