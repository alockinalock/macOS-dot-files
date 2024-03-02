-- 6 lsps are in this file. c++, python, zig, and nim.
-- zig and nim are commented out
-- c++, typescript(which is also javascript), eslint, c#, and python are active (at least, they should be)


-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', ',e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', 'ge', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gE', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', ',q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 's', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'i', ',s', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', ',wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', ',wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', ',wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', ',D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', ',rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', ',qf', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', ',f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

-- nim lsp (commented out because I do not use)
--require("lspconfig").nimls.setup{
--    cmd                 = {"nimlsp"},
--    filetypes           = {"nim"},
--    single_file_support = true
--}

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = { "documentation", "detail", "additionalTextEdits" },
}

--require('lspconfig').rust_analyzer.setup{
--	on_attach = on_attach,
--	capabilities = capabilities,
--	filetypes = {"rust"},
--	root_dir = require('lspconfig').util.root_pattern("Cargo.toml"),
--	settings = {
--		['rust_analyzer'] = {
--			cargo = {
--				allFeatures = true,
--			}
--		}
--	}
--}

-- c++ lsp
require('lspconfig').clangd.setup{
  on_attach = on_attach,
  cmd = {
    "/opt/homebrew/opt/llvm/bin/clangd",
    "--background-index",
    "--pch-storage=memory",
    "--all-scopes-completion",
    "--pretty",
    "--header-insertion=never",
    "-j=4",
    "--inlay-hints",
    "--header-insertion-decorators",
    "--function-arg-placeholders",
    "--completion-style=detailed"
  },
  filetypes = {"c", "cpp", "objc", "objcpp"},
  root_dir = require('lspconfig').util.root_pattern("src"),
  init_option = { fallbackFlags = {  "-std=c++2a"  } },
  capabilities = capabilities
}

-- ziglang lsp (commented out as I do not use it)
--require('lspconfig').zls.setup {
--  on_attach = on_attach,
--  capabilities = capabilities,
--  cmd = {
--    "zls",
--    "--enable-debug-log",
--  },
--}

-- python lsp
require('lspconfig').pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

-- typescript lsp, also serves as javascript
require('lspconfig').tsserver.setup{
	on_attach = on_attach,
	capabilities = capabilities
}

-- eslint lsp
require('lspconfig').eslint.setup{
	on_attach = function(client, bufnr)
		on_attach(client, bufnr)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			command = "EslintFixAll",
		})
	end,
	capabilities = capabilities
}

-- c# lsp (this one is wip as i need to figure out everythign)
-- as of right now, i have no clue if this works. just use visual studio
require('lspconfig').omnisharp.setup { 
	on_attach = on_attach,
	capabilities = capabilities
	-- down here should be settings, if i were going to configure them (too lazy right now). don't forget to add a comma at the end of capabilities if you start customizing settings for omnisharp
}







-- Diagnostics:
-- <leader>e   Open diagnostic float window
-- ge          Go to previous diagnostic
-- gE          Go to next diagnostic
-- <leader>q   Set diagnostic list for buffer

-- LSP Mappings:
-- gD          Go to declaration
-- gd          Go to definition
-- K           Show hover information
-- gi          Go to implementation
-- s           Show signature help
-- ,s          Show signature help (insert mode)
-- ,wa         Add workspace folder
-- ,wr         Remove workspace folder
-- ,wl         List workspace folders
-- D           Go to type definition
-- rn          Rename symbol
-- qf          Perform code actions
-- gr          Find references
-- ,f          Format the document
