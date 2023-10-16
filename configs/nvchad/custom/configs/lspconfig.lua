local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "tflint", "yamlls", "bashls", "jsonls", "dockerls", "terraformls", "gopls", "eslint" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

--
-- Without the loop, you would have to manually set up each LSP
--

-- terraform language server setup for linting, highlights and completion
-- lspconfig.terraformls.setup{}
-- vim.api.nvim_create_autocmd({"BufWritePre"}, {
  -- pattern = {"*.tf", "*.tfvars"},
  -- callback = function()
    -- vim.lsp.buf.format()
  -- end,
-- })
-- docker, ansible and yaml language servers
-- lspconfig.dockerls.setup{}
-- lspconfig.yamlls.setup{
--   filetypes = {
--     "yaml",
--     "yaml.docker-compose"
--   }
-- }
lspconfig.ansiblels.setup{
  filetypes = {
    "yaml",
  },
  settings = {
    ansible = {
      ansible = {
        path = "ansible",
        useFullyQualifiedCollectionNames = true
      },
      ansibleLint = {
        enabled = true,
        path = "ansible-lint"
      },
      executionEnvironment = {
        enabled = false
      },
      python = {
        interpreterPath = "python"
      },
      completion = {
        provideRedirectModules = true,
        provideModuleOptionAliases = true
      }
    },
  },
  on_attach = on_attach,
  capabilities = capabilities
}
