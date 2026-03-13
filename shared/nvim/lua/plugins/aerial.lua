return {
  {
    "stevearc/aerial.nvim",
    opts = {
      layout = {
        width = 0.2,
      }
    },
    keys = {
      {
        "<leader>o", -- "<leader>cs",
        "<cmd>AerialToggle!<CR>",
        desc = "󰙅 Outline (Aerial)",
      },
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
  },
}