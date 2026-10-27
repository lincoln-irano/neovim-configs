return {
  "folke/which-key.nvim",

  event = "VeryLazy",

  opts = {
    preset = "modern",

    delay = 300,

    spec = {
      { "<leader>f", group = "Arquivos" },
      { "<leader>g", group = "Git" },
      { "<leader>c", group = "Código" },
      { "<leader>a", group = "IA" },
      { "<leader>b", group = "Buffers" }
    },
  },

  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({
          global = false,
        })
      end,
      desc = "Mostrar atalhos locais",
    },
  },
}

