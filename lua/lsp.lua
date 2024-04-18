-- Add additional capabilities supported by nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require('lspconfig')

local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)

  require('lsp-format').on_attach(client)
end

local settings = {
  codeActionOnSave = {
    enable = true,
    mode = "all"
  }
}
-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local default_config = {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = settings
}

local servers = {
  clangd = {},
  solargraph = {},
  tsserver = {
    settings = vim.tbl_deep_extend(
      'force',
      settings,
      {
        format = {
          insertSpaceAfterOpeningAndBeforeClosingEmptyBraces = false
        }
      }
    ),
  },
  pyright = {},
  cssls = {
    capabilities = vim.tbl_deep_extend(
      'force',
      capabilities,
      {
        textDocument = {
          completion = {
            completionItem = {
              snippetSupport = true
            }
          }
        }
      }
    )
  },
  rust_analyzer = {},
  lua_ls = {
    settings = vim.tbl_deep_extend(
      'force',
      settings,
      {
        Lua = {
          diagnostics = { globals = { 'vim' } }
        }
      }
    )
  },
  cmake = {},
  volar = {
    filetypes = { 'vue' },
    init_options = {
      vue = {
        hybridMode = false,
      },
    },
  },
  dartls = {},
  gopls = {},
  bashls = {},
  tailwindcss = {}
}
for server, config in pairs(servers) do
  lspconfig[server].setup(vim.tbl_deep_extend('force', default_config, config))
end

-- nvim-cmp setup
local cmp = require 'cmp'
local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")
cmp.setup {
  snippet = {
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.,
    ["<C-n>"] = cmp.mapping(
      function(fallback)
        cmp_ultisnips_mappings.compose { "jump_forwards" } (fallback)
      end,
      { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
    ),
    ["<C-p>"] = cmp.mapping(
      function(fallback)
        cmp_ultisnips_mappings.jump_backwards(fallback)
      end,
      { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
    ),
    ["<Tab>"] = cmp.mapping(
      function(fallback)
        cmp_ultisnips_mappings.compose { "expand", "select_next_item" } (fallback)
      end,
      { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
    ),
    ["<S-Tab>"] = cmp.mapping(
      function(fallback)
        cmp_ultisnips_mappings.compose { "select_prev_item" } (fallback)
      end,
      { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
    )
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'ultisnips' }, -- For ultisnips users.
  },
}
