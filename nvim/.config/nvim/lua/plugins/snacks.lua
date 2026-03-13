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
        width = 0.26,
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
            preview = true,
            layout = {
              width = 0.26,
            },
          },
          win = {
            list = {
              keys = {
                ["a"] = {
                  "explorer_add",
                  mode = "n",
                  desc = "Add File or Directory",
                },
                ["d"] = {
                  "explorer_del",
                  mode = "n",
                  desc = "Delete File",
                },
                ["?"] = {
                  function()
                    require("which-key").show({ global = false })
                  end,
                  mode = "n",
                  desc = "Show Explorer Keymaps",
                },
              },
            },
          },
        }
      }
    }
  },
}