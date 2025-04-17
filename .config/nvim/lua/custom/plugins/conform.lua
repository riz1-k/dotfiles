return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("conform").setup {
      formatters_by_ft = {
        javascript = { "prettier", "eslint" },
        typescript = { "prettier", "eslint" },
        typescriptreact = { "prettier", "eslint" },
        javascriptreact = { "prettier", "eslint" },
        lua = { "stylua" },
        html = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
        markdown = { "prettier" },
        markdown_inline = { "prettier" },
      },
      format_on_save = {
        lsp_fallback = true,
        lsp_format = "first",
        async = false,
        timeout_ms = 1000,
        filter = function(client)
          return client.name == "eslint"
        end,
      },
      lint = {
        disabled_filetypes = {
          "NvimTree",
          "TelescopePrompt",
          "help",
          "lspinfo",
          "startuptime",
        },
      },
    }
  end,
}
