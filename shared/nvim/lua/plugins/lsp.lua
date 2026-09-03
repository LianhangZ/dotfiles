return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      servers = {
        pyright = {}, -- Python
        clangd = {}, -- C/C++
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
            },
          },
        }, -- Lua
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "clangd",
        "lua-language-server",
      },
    },
  },
}