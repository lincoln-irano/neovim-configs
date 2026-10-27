-- Tecla Leader: Espaço
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- Salvar arquivo
map("n", "<leader>w", "<cmd>write<cr>", {
  desc = "Salvar arquivo",
})

-- Fechar janela
map("n", "<leader>q", "<cmd>quit<cr>", {
  desc = "Fechar janela",
})

-- Navegação entre janelas
map("n", "<C-h>", "<C-w>h", {
  desc = "Janela à esquerda",
})

map("n", "<C-j>", "<C-w>j", {
  desc = "Janela abaixo",
})

map("n", "<C-k>", "<C-w>k", {
  desc = "Janela acima",
})

map("n", "<C-l>", "<C-w>l", {
  desc = "Janela à direita",
})


-- ============================================
-- Gerenciamento de buffers
-- ============================================

-- Próximo buffer
map("n", "<S-l>", "<cmd>bnext<cr>", {
  desc = "Próximo buffer",
})

-- Buffer anterior
map("n", "<S-h>", "<cmd>bprevious<cr>", {
  desc = "Buffer anterior",
})

-- Listar buffers
map("n", "<leader>bl", "<cmd>ls<cr>", {
  desc = "Listar buffers",
})

-- Fechar buffer atual
map("n", "<leader>bd", "<cmd>bdelete<cr>", {
  desc = "Fechar buffer",
})

-- Alternar para o buffer anterior
map("n", "<leader>bb", "<C-^>", {
  desc = "Alternar buffer",
})

-- ============================================
-- LSP - Navegação e documentação
-- ============================================

-- Ir para definição
map("n", "gd", vim.lsp.buf.definition, {
  desc = "Ir para definição",
})

-- Ir para declaração
map("n", "gD", vim.lsp.buf.declaration, {
  desc = "Ir para declaração",
})

-- Mostrar documentação
map("n", "K", vim.lsp.buf.hover, {
  desc = "Documentação do símbolo",
})

-- Renomear símbolo
map("n", "<leader>cr", vim.lsp.buf.rename, {
  desc = "Renomear símbolo",
})

-- Ações de código
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {
  desc = "Ações de código",
})

-- Mostrar diagnóstico
map("n", "<leader>cd", vim.diagnostic.open_float, {
  desc = "Mostrar diagnóstico",
})

-- Próximo diagnóstico
map("n", "]d", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, {
  desc = "Próximo diagnóstico",
})

-- Diagnóstico anterior
map("n", "[d", function()
  vim.diagnostic.jump({ count = -1, float = true })
end, {
  desc = "Diagnóstico anterior",
})

