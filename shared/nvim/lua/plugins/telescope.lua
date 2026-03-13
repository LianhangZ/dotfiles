return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>ff", false },
    -- {
      -- "<leader>ff",
      -- function()
      --   require("telescope.builtin").find_files()
      -- end,
      -- desc = "󰍉 Find Files",
    -- },
    {
      "<leader><leader>",
      function ()
        require("telescope.builtin").find_files()
      end,
      desc = "󰍉 Find Files" -- Find Files (Root Dir)
    },
    { "<leader>fg", false },
    {
      -- "<leader>fg",
      "<leader>g",

      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "󰍉 Live Grep"
    },
  },
  opts = function(_, opts)
    local actions = require("telescope.actions")
    opts.defaults = opts.defaults or {}
    opts.defaults.layout_strategy = "horizontal"
    opts.defaults.layout_config = {
      horizontal = {
        preview_width = 0.55,
        preview_cutoff = 1,
      },
      width = 0.95,
      height = 0.9,
    }
    opts.defaults.mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<Esc>"] = actions.close,
      },
    }
    opts.defaults.file_ignore_patterns = {
      "%.git/",
    }

    opts.pickers = {
      find_files = {
        hidden = true,
      },
    }
  end,
}
