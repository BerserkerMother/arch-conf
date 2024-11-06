local mason = require("mason")
local mason_registry = require("mason-registry")

mason.setup()

packages = {
	      "lua-language-server",
        "rust-analyzer",
        "prettier",
        "black",
        "python-lsp-server",
        "clangd",
        "clang-format",
        "json-lsp",
        "gopls",
}
-- install ensured packages
for _, package_name in ipairs(packages) do
  local pkg = mason_registry.get_package(package_name)
  if not pkg:is_installed() then
    pkg:install()
  end
end
