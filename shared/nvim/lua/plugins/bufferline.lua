-- ~/.config/nvim/lua/plugins/bufferline.lua
return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        mode = "buffers",
        numbers = "ordinal",
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
        indicator = {
          style = "none",
        },
        buffer_close_icon = "󰅖",
        modified_icon = "●",
        close_icon = "󰅖",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 18,
        max_prefix_length = 15,
        truncate_names = true,
        tab_size = 18,
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = false,
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = false,
        show_tab_indicators = false,
        persist_buffer_sort = true,
        separator_style = "slant",
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        offsets = {
          {
            filetype = "NvimTree",
            text = "NvimTree",
            text_align = "center",
            separator = false,
          },
        },
      },
      highlights = {
        fill = {
          bg = "#181821",
        },
        background = {
          fg = "#6c7086",
          bg = "#181821",
        },
        buffer_visible = {
          fg = "#9399b2",
          bg = "#1e1e2e",
        },
        buffer_selected = {
          fg = "#cdd6f4",
          bg = "#242438",
          bold = true,
          italic = false,
        },
        numbers = {
          fg = "#6c7086",
          bg = "#181821",
        },
        numbers_visible = {
          fg = "#9399b2",
          bg = "#1e1e2e",
        },
        numbers_selected = {
          fg = "#f9e2af",
          bg = "#242438",
          bold = true,
        },
        close_button = {
          fg = "#6c7086",
          bg = "#181821",
        },
        close_button_visible = {
          fg = "#9399b2",
          bg = "#1e1e2e",
        },
        close_button_selected = {
          fg = "#f38ba8",
          bg = "#242438",
        },
        modified = {
          fg = "#f9e2af",
          bg = "#181821",
        },
        modified_visible = {
          fg = "#f9e2af",
          bg = "#1e1e2e",
        },
        modified_selected = {
          fg = "#f9e2af",
          bg = "#242438",
        },
        separator = {
          fg = "#181821",
          bg = "#181821",
        },
        separator_visible = {
          fg = "#181821",
          bg = "#1e1e2e",
        },
        separator_selected = {
          fg = "#181821",
          bg = "#242438",
        },
        offset_separator = {
          fg = "#181821",
          bg = "#181821",
        },
        duplicate = {
          fg = "#6c7086",
          bg = "#181821",
          italic = false,
        },
        duplicate_visible = {
          fg = "#9399b2",
          bg = "#1e1e2e",
          italic = false,
        },
        duplicate_selected = {
          fg = "#cdd6f4",
          bg = "#242438",
          italic = false,
        },
      },
    },
  },
}
