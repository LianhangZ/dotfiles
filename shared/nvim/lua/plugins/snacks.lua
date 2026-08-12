-- ~/.config/nvim/lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  keys = {
    { "<leader><leader>", false },
    { "<leader>bd", false },  -- Delete Buffer
    { "<leader>bo", false },  -- Delete Other Buffer
    { "<leader>e", false },
    { "<leader>ft", false },  -- Floating Terminal
    { "<leader>ff", false },  -- Find File
    { "<leader>fg", false },  -- Live Grep
    { "<leader>fF", false },
    { "<leader>fp", false },  -- Find Projects
    { "<leader>d", function() Snacks.bufdelete() end,
      desc = " Delete Buffer"},
    { "<leader>tb",
      function() Snacks.terminal(nil, {win = {position = "bottom", height = 0.35,}}) end,
      desc = " Bottom Terminal"
    },
    { "<leader>tr",
      function() Snacks.terminal(nil, {win = {position = "right", width = 0.26,}}) end,
      desc = " Right Terminal"
    },
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
      enabled = false,
    },
    picker = {
      sources = {
        projects = {
          layout = {
            preset = "default",
          },
          dev = {
            "~/LianhangZ",
            "~/Library/Mobile Documents/iCloud~md~obsidian/Documents"
          },
          patterns = {
            ".git",
            "Makefile",
            "CMakeLists.txt",
            "README.md",
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
      }
    }
  },
}
