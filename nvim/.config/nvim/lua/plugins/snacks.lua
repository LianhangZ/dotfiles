-- ~/.config/nvim/lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  keys = {
    { "<leader>t", function() Snacks.terminal() end, desc = "Terminal (float)" },
    { "<leader>ft", false },
  },
  opts = {
    terminal = {
      win = {
        position = "right",
        width = 0.25,
      },
    },
    explorer = {
      enabled = true,
    },
    picker = {
      sources = {
        explorer = {
          hidden = true,
          follow_file = true,
          layout = {
            preset = "sidebar",
            preview = false,
          }
        }
      }
    }
  },
}