return {
  {
    "kdheepak/lazygit.nvim",
    keys = {
      {
        "<leader>lg",
        function()
          require("snacks").terminal("lazygit", {
            win = {
              position = "float",
              border = "none",
              width = 0.99,
              height = 0.99,
            --   backdrop = false,
            },
          })
        end,
        desc = "Open LazyGit",
      },
    },
  },
}