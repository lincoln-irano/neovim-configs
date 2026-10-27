return {
  "stevearc/conform.nvim",

  event = { "BufReadPre", "BufNewFile" },

  opts = {
    formatters_by_ft = {
      lua = { "stylua" },

      javascript = { "biome" },
      javascriptreact = { "biome" },
      typescript = { "biome" },
      typescriptreact = { "biome" },

      json = { "biome" },
      jsonc = { "biome" },
      css = { "biome" },
      scss = { "biome" },
      html = { "biome" },
      markdown = { "biome" },
      yaml = { "biome" },

      go = { "gofmt" },
    },

    -- Biome somente em projetos configurados
    formatters = {
      biome = {
        condition = function(_, ctx)
          local root = vim.fs.root(
            ctx.buf,
            { "biome.json", "biome.jsonc" }
          )

          return root ~= nil
            and vim.fn.executable(
              root .. "/node_modules/.bin/biome"
            ) == 1
        end,

        command = function(_, ctx)
          local root = vim.fs.root(
            ctx.buf,
            { "biome.json", "biome.jsonc" }
          )

          return root .. "/node_modules/.bin/biome"
        end,
      },
    },

    -- Formatação manual
    format_on_save = nil,

    default_format_opts = {
      timeout_ms = 3000,
      lsp_format = "never",
    },

    notify_on_error = true,
    notify_no_formatters = true,
  },

  keys = {
    {
      "<leader>cf",
      function()
        require("conform").format({
          async = true,
          lsp_format = "never",
        })
      end,
      mode = { "n", "v" },
      desc = "Formatar código",
    },
  },
}
