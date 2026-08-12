return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local colors = {
        bg = "#181821",
        fg = "#cdd6f4",
        muted = "#6c7086",
        blue = "#89b4fa",
        green = "#a6e3a1",
        yellow = "#f9e2af",
        orange = "#fab387",
        red = "#f38ba8",
      }

      local function lsp_name()
        local clients = vim.lsp.get_clients({ bufnr = 0 })
        if #clients == 0 then
          return "[LSP] OFF"
        end

        local names = {}
        for _, client in ipairs(clients) do
          table.insert(names, client.name)
        end

        return "[LSP] " .. table.concat(names, ",")
      end

      opts.options = vim.tbl_deep_extend("force", opts.options or {}, {
        theme = "catppuccin",
        globalstatus = true,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = { "dashboard", "snacks_dashboard" },
        },
      })

      opts.sections.lualine_a = {
        {
          "mode",
          fmt = function(mode)
            return mode:sub(1, 1)
          end,
          color = { fg = colors.bg, bg = colors.red, gui = "bold" },
          padding = { left = 1, right = 1 },
        },
      }

      opts.sections.lualine_b = {
        {
          "branch",
          icon = "",
          color = { fg = colors.orange, bg = colors.bg, gui = "bold" },
        },
      }

      opts.sections.lualine_c = {
        {
          "filename",
          path = 1,
          symbols = {
            modified = " ●",
            readonly = " ",
            unnamed = "[No Name]",
          },
          color = function()
            return vim.bo.modified
              and { fg = colors.yellow, bg = colors.bg, gui = "bold" }
              or { fg = colors.fg, bg = colors.bg }
          end,
        },
      }

      opts.sections.lualine_x = {
        {
          "diagnostics",
          sources = { "nvim_diagnostic" },
          symbols = { error = " ", warn = " ", info = " ", hint = " " },
          diagnostics_color = {
            error = { fg = colors.red, bg = colors.bg },
            warn = { fg = colors.yellow, bg = colors.bg },
            info = { fg = colors.blue, bg = colors.bg },
            hint = { fg = colors.green, bg = colors.bg },
          },
          color = { bg = colors.bg },
        },
        {
          lsp_name,
          color = { fg = colors.green, bg = colors.bg, gui = "bold" },
        },
        {
          "filetype",
          colored = false,
          icon_only = false,
          color = { fg = colors.blue, bg = colors.bg, gui = "bold" },
        },
      }

      opts.sections.lualine_y = {
        {
          "location",
          color = { fg = colors.yellow, bg = colors.bg, gui = "bold" },
        },
      }

      opts.sections.lualine_z = {
        {
          "progress",
          color = { fg = colors.bg, bg = colors.blue, gui = "bold" },
          padding = { left = 1, right = 1 },
        },
      }

      opts.inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
          {
            "filename",
            path = 1,
            color = { fg = colors.muted, bg = colors.bg },
          },
        },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      }
    end,
  },
}
