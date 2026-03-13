return {
  "lewis6991/gitsigns.nvim",
  opts = {
    signs = {
      add          = { text = "┃" },
      change       = { text = "┃" },
      delete       = { text = "_" },
      topdelete    = { text = "‾" },
      changedelete = { text = "~" },
      untracked    = { text = "┆" },
    },
    signs_staged = {
      add          = { text = "┃" },
      change       = { text = "┃" },
      delete       = { text = "_" },
      topdelete    = { text = "‾" },
      changedelete = { text = "~" },
      untracked    = { text = "┆" },
    },
    signs_staged_enable = true,   -- by default
    current_line_blame = false,   -- by default
    auto_attach = true,           -- by default
  },
  keys = {
    {
      "<leader>hi",
      function()
        require("gitsigns").preview_hunk_inline()
      end,
      desc = "Preview Hunk Inline",
    },
  },
}
