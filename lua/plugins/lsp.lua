return {
  {
    "mason-org/mason-lspconfig.nvim",

    lazy = false,

    dependencies = {
      {
        "mason-org/mason.nvim",
        opts = {
          ui = {
            border = "rounded",
          },
        },
      },

      "neovim/nvim-lspconfig",
    },

    opts = {
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        "gopls"
      },

      automatic_enable = true,
    },

    config = function(_, opts)
      -- Configuração específica para Lua
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            runtime = {
              version = "LuaJIT",
            },

            diagnostics = {
              globals = { "vim" },
            },

            workspace = {
              library = {
                vim.env.VIMRUNTIME,
              },

              checkThirdParty = false,
            },

            telemetry = {
              enable = false,
            },
          },
        },
      })
      -- Configurações do Go Language Server
      vim.lsp.config("gopls", {
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
            },

            staticcheck = true,
          },
        },
      })

      -- Instala e habilita os servidores configurados
      require("mason-lspconfig").setup(opts)
      -- Biome LSP: utiliza configuração e binário do projeto
      vim.lsp.enable("biome")
    end,
  },
}

