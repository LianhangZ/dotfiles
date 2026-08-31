-- ~/.config/nvim/lua/plugins/comment.lua
return {
  {
    "nvim-mini/mini.comment",
    opts = {},
    keys = {
      { "gcc", mode = "n", desc = "Comment Line" },
      -- { "gc", mode = { "x" }, desc = "Comment" },
    },
  },
}