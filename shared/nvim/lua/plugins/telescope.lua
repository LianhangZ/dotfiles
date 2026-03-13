return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  keys = {
    { "<leader>ff", false },
    { "<leader><leader>", false },
    { "<leader>fG", false },
    { "<leader>fg", false },
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "󰍉 Find Files"
    },
    {
      "<leader><leader>",
      function ()
        require("telescope.builtin").find_files()
      end,
      desc = "󰍉 Find Files (Root Dir)"
    },
    {
      "<leader>fg",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "󰍉 Live Grep"
    },
  },
  opts = function(_, opts)
    local actions = require("telescope.actions")
    opts.defaults = opts.defaults or {}
    opts.defaults.mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<Esc>"] = actions.close,
      },
    }

    opts.pickers = {
      find_files = {
        hidden = true,
      },
    }
  end,
}
