return {
  'kevinhwang91/nvim-ufo',
  event = 'InsertEnter',
  dependencies = { 'kevinhwang91/promise-async', lazy = true },
  config = function()
    provider_selector = function()
      return { 'treesitter', 'indent' }
    end
  end,
}
