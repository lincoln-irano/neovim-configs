return {
  {
    "saghen/blink.cmp",

    -- Mantém a linha estável v1
    version = "1.*",

    event = "InsertEnter",

    dependencies = {
      "rafamadriz/friendly-snippets",
    },

    opts = {
      -- Atalhos de autocompletar
      keymap = {
        preset = "default",
      },

      -- Ícones compatíveis com nossa Nerd Font
      appearance = {
        nerd_font_variant = "mono",
      },

      -- Fontes de sugestões
      sources = {
        default = {
          "lsp",
          "path",
          "snippets",
          "buffer",
        },
      },

      completion = {
        -- Mostra documentação ao selecionar sugestões
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 300,
        },

        -- Janela de sugestões
        menu = {
          border = "rounded",
        },

        -- Mostra prévia do texto sugerido
        ghost_text = {
          enabled = true,
        },
      },

      -- Snippets nativos do Neovim
      snippets = {
        preset = "default",
      },

      -- Matcher otimizado
      fuzzy = {
        implementation = "prefer_rust",
      },
    },
  },
}
