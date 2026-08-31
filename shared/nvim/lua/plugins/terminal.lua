return {
  {
    "folke/snacks.nvim",
    keys = {
      { "<leader>ft", false }, -- Floating Terminal
      { "<leader>tb",
        function()
          Snacks.terminal(nil, {win = {position = "bottom", height = 0.35,}})
        end,
        desc = " Bottom Terminal"
      },
      { "<leader>tr",
        function()
          Snacks.terminal(nil, {win = {position = "right", width = 0.26,}})
        end,
        desc = " Right Terminal"
      },
    },
  },
}
