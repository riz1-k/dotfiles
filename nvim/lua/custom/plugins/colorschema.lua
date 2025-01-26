return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    local opts = {
      flavour = 'macchiato',
      integrations = {
        neotree = true,
        lualine = true,
        cmp = true,
        gitsigns = true,
        telescope = true,
      },
    }
    vim.cmd [[colorscheme catppuccin]]
    return opts
  end,
}
