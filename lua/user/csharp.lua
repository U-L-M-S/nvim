local lsp_config = require('lspconfig')

lsp_config.csharp_ls.setup{
  cmd = {"csharp-language-server", "--stdio"},
  filetypes = {"cs"},
}

