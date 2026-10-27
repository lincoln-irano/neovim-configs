-- ============================================
-- Neovim Configuration
-- ============================================

-- Leader precisa existir antes dos plugins
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Configurações principais
require("config.options")
require("config.keymaps")

-- Gerenciador de plugins
require("config.lazy")

