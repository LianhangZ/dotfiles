-- ~/.config/nvim/lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  keys = {
    { "<leader><leader>", false },
    { "<leader>bd", false },  -- Delete Buffer
    { "<leader>bo", false },  -- Delete Other Buffer
    { "<leader>ft", false },  -- Floating Terminal
    { "<leader>ff", false },  -- Find File
    { "<leader>fg", false },  -- Live Grep
    { "<leader>fF", false },
    { "<leader>fp", false },  -- Find Projects
    { "<leader>d", function() Snacks.bufdelete() end,
      desc = " Delete Buffer"},
    { "<leader>t", function() Snacks.terminal() end,
      desc = " Terminal"},
    { "<leader>e", function() Snacks.explorer() end,
      desc = "󰙅 Explorer"},
    { "<leader>p", function () Snacks.picker.projects() end,
      desc = "󰙅 Projects"},
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
        projects = {
          layout = {
            preset = "default",
          },
          dev = {
            "~/LianhangZ",
            "~/Desktop",
            "~/Documents",
          },
          patterns = {
            ".git",
            "Makefile",
            "CMakeLists.txt"
          },
        },
        files = {
          hidden = true,
          layout = {
            preset = "default",
            preview = true,
          },
        },
        grep = {
          layout = {
            preset = "default",
            preview = true,
          },
        },
        explorer = {
          hidden = true,
          follow_file = true,
          layout = {
            preset = "sidebar",
            preview = false,
            layout = {
              width = 0.26,
            },
          },
          win = {
            list = {
              keys = {
                ["a"] = {
                  "explorer_add", mode = "n",
                  desc = "󰝒 Add File/Dir",
                },
                ["d"] = {
                  "explorer_del", mode = "n",
                  desc = " Delete File/Dir",
                },
                ["h"] = {
                  "explorer_close", mode = "n",
                  desc = " Collapse Folder"
                },
                ["H"] = {
                  "toggle_hidden", mode = "n",
                  desc = "󰈈 Hide Dot Files"
                },
                ["r"] = {
                  "explorer_rename", mode = "n",
                  desc = "󰏫 Rename File/Dir",
                },
                ["?"] = {
                  function()
                    require("which-key").show({ global = false })
                  end,
                  mode = "n",
                  desc = " Show Explorer Keymaps",
                },
              },
            },
          },
        }
      }
    }
  },
}
