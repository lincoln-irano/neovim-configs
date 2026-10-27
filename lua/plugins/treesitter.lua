return {
  "nvim-treesitter/nvim-treesitter",

  branch = "main",
  lazy = false,
  build = ":TSUpdate",

  dependencies = {
    "neovim-treesitter/treesitter-parser-registry",
  },

  config = function()
    local languages = {
      "lua",
      "vim",
      "vimdoc",

      "javascript",
      "typescript",
      "tsx",
      "html",
      "css",
      "json",

      "go",
      "gomod",
      "gosum",

      "java",
      "kotlin",

      "bash",
      "dockerfile",
      "yaml",
      "toml",

      "markdown",
      "markdown_inline",
    }

    -- Instala os parsers necessários
    require("nvim-treesitter").install(languages)

  -- Ativa o Treesitter somente para parsers disponíveis
  vim.api.nvim_create_autocmd("FileType", {
    callback = function(args)
      local filetype = vim.bo[args.buf].filetype

      -- Obtém a linguagem correspondente ao tipo de arquivo
      local language = vim.treesitter.language.get_lang(filetype)

      if not language then
        return
      end

      -- Verifica se o parser está disponível
      local available = vim.treesitter.language.add(language)

      if not available then
        return
      end

      -- Inicia o realce sintático
      vim.treesitter.start(args.buf, language)
    end,
  })
end,
}
