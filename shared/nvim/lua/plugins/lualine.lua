return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
-- lualine_a | lualine_b | lualine_c || lualine_x | lualine_y | lualine_z
      opts.sections.lualine_z = { "location", }
      -- opts.sections.lualine_y = { "progress", }
      opts.sections.lualine_y = {}
      opts.sections.lualine_x = {}
      opts.sections.lualine_c = {
        function()
          return vim.fn.expand("%:.")
        end,
      }
      opts.sections.lualine_c = {
        {
          "filename",
          path = 1,
          symbols = {
            modified = " ●",
            readonly = " ",
          },
          color = function()
            return vim.bo.modified
              and { fg = "#ff9e64", gui = "bold" }
              or { fg = "#a9b1d6" }
          end,
        },
      }
    end,
  },
}
