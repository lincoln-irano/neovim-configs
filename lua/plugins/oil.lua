return {
  "stevearc/oil.nvim",

  lazy = false,

  dependencies = {
    { "nvim-mini/mini.icons", opts = {} },
  },

  opts = {
    default_file_explorer = true,

    columns = {
      "icon",
    },

    delete_to_trash = false,

    skip_confirm_for_simple_edits = false,

    view_options = {
      show_hidden = true,
    },

    keymaps = {
      ["<C-h>"] = false,
      ["<C-l>"] = false,
    },

    float = {
      padding = 2,
      max_width = 100,
      max_height = 30,
      border = "rounded",
    },
  },

  keys = {
    {
      "-",
      "<cmd>Oil<cr>",
      desc = "Explorador de arquivos",
    },
    {
      "<leader>e",
      "<cmd>Oil --float<cr>",
      desc = "Explorador flutuante",
    },
  },
}
