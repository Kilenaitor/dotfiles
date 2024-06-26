local M = {}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
M.capabilities = capabilities

-- lspconfig settings

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Mappings.
  local opts = { noremap = true, silent = true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  buf_set_keymap(
    "n",
    "<C-k>",
    "<cmd>lua vim.lsp.buf.signature_help()<CR>",
    opts
  )
  buf_set_keymap(
    "n",
    "<space>wa",
    "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>",
    opts
  )
  buf_set_keymap(
    "n",
    "<space>wr",
    "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>",
    opts
  )
  buf_set_keymap(
    "n",
    "<leader>wl",
    "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>",
    opts
  )
  buf_set_keymap(
    "n",
    "<leader>D",
    "<cmd>lua vim.lsp.buf.type_definition()<CR>",
    opts
  )
  buf_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  buf_set_keymap(
    "n",
    "<leader>ca",
    "<cmd>lua vim.lsp.buf.code_action()<CR>",
    opts
  )
  buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  buf_set_keymap(
    "n",
    "<leader>i",
    "<cmd>lua vim.diagnostic.open_float()<CR>",
    opts
  )
  buf_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
  buf_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
  buf_set_keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

  vim.diagnostic.config({
    virtual_text = {
      source = "always",
      format = function(diagnostic)
        local new_line_location = diagnostic.message:find("\n")

        if new_line_location ~= nil then
          return diagnostic.message:sub(1, new_line_location)
        else
          return diagnostic.message
        end
      end,
    },
  })
end
M.on_attach = on_attach

-- null-ls configs
local null_ls = require("null-ls")
null_ls.setup({
  on_attach = on_attach,
  sources = {
    null_ls.builtins.formatting.trim_whitespace,
    null_ls.builtins.formatting.trim_newlines,
  },
})

return M
