-- ~/.config/nvim/lua/plugins/incline.lua
return {
  {
    "b0o/incline.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      hide = {
        cursorline = true,
        focused_win = false,
        only_win = false,
      },
      ignore = {
        buftypes = "special",
        filetypes = {
          "NvimTree",
          "dashboard",
          "snacks_dashboard",
          "snacks_picker_list",
        },
        floating_wins = true,
        unlisted_buffers = true,
        wintypes = "special",
      },
      window = {
        margin = {
          horizontal = 1,
          vertical = 0,
        },
        options = {
          signcolumn = "no",
          wrap = false,
        },
        padding = 0,
        padding_char = " ",
        placement = {
          horizontal = "right",
          vertical = "top",
        },
      },
      render = function(props)
        local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
        if filename == "" then
          filename = "[No Name]"
        end

        local devicons = require("nvim-web-devicons")
        local icon, icon_color = devicons.get_icon_color(filename)
        local bg = props.focused and "#242438" or "#1e1e2e"
        local fg = props.focused and "#cdd6f4" or "#6c7086"

        return {
          icon and {
            icon,
            guifg = icon_color,
            guibg = bg,
          } or "",
          icon and " " or "",
          {
            filename,
            gui = props.focused and "bold" or nil,
            guifg = fg,
            guibg = bg,
          },
          {
            " 󰅖 ",
            guifg = "#6c7086",
            guibg = bg,
          },
        }
      end,
    },
  },
}
