return {
  {
    "folke/noice.nvim",

    keys = {
      {
        "<leader>nh",
        "<cmd>Noice history<cr>",
        desc = "Noice History",
      },
    },

    opts = {
      lsp = {
        progress = {
          enabled = true,
        },

        hover = {
          enabled = true,
        },

        signature = {
          enabled = true,
        },
      },

      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = true,
        lsp_doc_border = true,
      },
    },
  },
}