-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
-- local util = require "lspconfig/util"
local servers = { "html", "cssls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

--[[ lspconfig.pyright.setup({ ]]
-- on_attach = on_attach,
-- capabilities = capabilities,
-- ft = {"python"}
-- })
--


-- golang
-- Configure LSP servers
lspconfig.gopls.setup {
    cmd = {"gopls", "--remote=auto"},
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        },
    },
}

-- C config
lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

lspconfig.html.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

lspconfig.htmx.setup {}

lspconfig.tailwindcss.setup {
  filetypes = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact", "svelte", "vue" },
}

lspconfig.jsonls.setup {
  filetypes = { "json" },
}

lspconfig.tsserver.setup {
  on_attach = function(client, _)
    client.resolved_capabilities.document_formatting = true
  end,
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "js" },
}

lspconfig.pylsp.setup {
  on_attach = on_attach,
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = false,
        },
        black = {
          enabled = true,
        },
      },
    },
  },
}
