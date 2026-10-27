return {
  "nvim-telescope/telescope.nvim",

  branch = "master",

  cmd = "Telescope",

  dependencies = {
    "nvim-lua/plenary.nvim",

    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },

  opts = {
    defaults = {
      path_display = { "smart" },

      layout_config = {
        horizontal = {
          preview_width = 0.55,
        },
      },
    },
  },

  config = function(_, opts)
    local telescope = require("telescope")

    telescope.setup(opts)
    telescope.load_extension("fzf")
  end,

  keys = {
    {
      "<leader>ff",
      "<cmd>Telescope find_files<cr>",
      desc = "Buscar arquivos",
    },
    {
      "<leader>fg",
      "<cmd>Telescope live_grep<cr>",
      desc = "Buscar texto no projeto",
    },
    {
      "<leader>fb",
      "<cmd>Telescope buffers<cr>",
      desc = "Buffers abertos",
    },
    {
      "<leader>fr",
      "<cmd>Telescope oldfiles<cr>",
      desc = "Arquivos recentes",
    },
    {
      "<leader>fh",
      "<cmd>Telescope help_tags<cr>",
      desc = "Buscar ajuda",
    },
  },
}

