return {
  {
    "kdheepak/lazygit.nvim",
    keys = {
      { "<leader>lg", false },
      {
        "<leader>l",
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
        desc = "󰘬 LazyGit",
      },
    },
  },
}