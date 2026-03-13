-- ~/.config/nvim/lua/plugins/comment.lua
return {
  {
    "folke/ts-comments.nvim",
    opts = {},
  },
  {
    "nvim-mini/mini.comment",
    opts = {},
    keys = {
      { "gcc", mode = "n", desc = "Comment line" },
      { "gc", mode = { "n", "x" }, desc = "Comment" },
    },
  },
}