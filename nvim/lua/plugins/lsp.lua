return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "williamboman/mason.nvim",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",    -- Lua
          "gopls",     -- Go
          "intelephense", -- PHP
          "jsonls",
          "yamlls"
        },
      })
	vim.diagnostic.config({
  	virtual_text = {
    	prefix = "●",   -- красивый маркер перед сообщением
    	spacing = 4,
  	},
  	signs = true,
  	underline = true,
  	update_in_insert = false,
  	severity_sort = true,
  	float = {
    	border = "rounded",
    	source = "always",  -- покажет, откуда сообщение: LSP / null-ls и т.д.
  		},
	})
      local lspconfig = require("lspconfig")

      -- Пример для Lua
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } }
          }
        }
      })

      -- Пример для PHP
      lspconfig.intelephense.setup({})

      -- Пример для Go
      lspconfig.gopls.setup({})
    end
  }
}

