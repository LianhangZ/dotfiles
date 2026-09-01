local colors = {
  bg = "#181821",
  bg_dark = "#14141d",
  bg_panel = "#1e1e2e",
  bg_line = "#2a2a3d",
  fg = "#cdd6f4",
  muted = "#6c7086",
  subtle = "#45475a",
  blue = "#89b4fa",
  green = "#a6e3a1",
  yellow = "#f9e2af",
  orange = "#fab387",
  red = "#f38ba8",
}

local function set(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

local function apply_highlights()
  vim.opt.fillchars:append({
    horiz = "─",
    horizdown = "┬",
    horizup = "┴",
    vert = "│",
    vertleft = "┤",
    vertright = "├",
    verthoriz = "┼",
  })

  set("Normal", { fg = colors.fg, bg = colors.bg })
  set("NormalNC", { fg = colors.fg, bg = colors.bg })
  set("NormalFloat", { fg = colors.fg, bg = colors.bg_panel })
  set("FloatBorder", { fg = colors.subtle, bg = colors.bg_panel })
  set("WinSeparator", { fg = colors.subtle, bg = colors.bg })

  set("CursorLine", { bg = colors.bg_line })
  set("CursorLineNr", { fg = colors.orange, bg = colors.bg_line, bold = true })
  set("LineNr", { fg = colors.muted, bg = colors.bg })
  set("SignColumn", { bg = colors.bg })
  set("FoldColumn", { fg = colors.muted, bg = colors.bg })
  set("ColorColumn", { bg = colors.bg_line })

  set("Visual", { bg = "#3e405f" })
  set("Search", { fg = colors.bg_dark, bg = colors.yellow })
  set("IncSearch", { fg = colors.bg_dark, bg = colors.orange })
  set("CurSearch", { fg = colors.bg_dark, bg = colors.orange })

  set("NvimTreeNormal", { fg = colors.fg, bg = colors.bg_panel })
  set("NvimTreeNormalNC", { fg = colors.fg, bg = colors.bg_panel })
  set("NvimTreeEndOfBuffer", { fg = colors.bg_panel, bg = colors.bg_panel })
  set("NvimTreeWinSeparator", { fg = colors.bg_dark, bg = colors.bg_panel })
  set("NvimTreeRootFolder", { fg = colors.blue, bg = colors.bg_panel, bold = true })
  set("NvimTreeFolderName", { fg = colors.blue, bg = colors.bg_panel })
  set("NvimTreeOpenedFolderName", { fg = colors.blue, bg = colors.bg_panel, bold = true })
  set("NvimTreeFolderIcon", { fg = colors.blue, bg = colors.bg_panel })
  set("NvimTreeGitDirty", { fg = colors.yellow, bg = colors.bg_panel })
  set("NvimTreeGitNew", { fg = colors.green, bg = colors.bg_panel })
  set("NvimTreeGitDeleted", { fg = colors.red, bg = colors.bg_panel })
  set("NvimTreeCursorLine", { bg = colors.bg_line })
  set("NvimTreeLineNr", { fg = colors.muted, bg = colors.bg_panel })

  set("BufferLineFill", { bg = colors.bg_dark })
  set("BufferLineOffsetSeparator", { fg = colors.bg_dark, bg = colors.bg_dark })

  set("StatusLine", { fg = colors.fg, bg = colors.bg_dark })
  set("StatusLineNC", { fg = colors.muted, bg = colors.bg_dark })

  set("InclineNormal", { fg = colors.fg, bg = colors.bg_line })
  set("InclineNormalNC", { fg = colors.muted, bg = colors.bg_panel })

  set("SnacksNormal", { fg = colors.fg, bg = colors.bg_panel })
  set("SnacksBorder", { fg = colors.subtle, bg = colors.bg_panel })
  set("SnacksPicker", { fg = colors.fg, bg = colors.bg_panel })
  set("SnacksPickerDir", { fg = colors.blue, bg = colors.bg_panel })
  set("SnacksPickerBorder", { fg = colors.subtle, bg = colors.bg_panel })
  set("SnacksTerminal", { fg = colors.fg, bg = colors.bg })
  set("SnacksDashboardNormal", { fg = colors.fg, bg = colors.bg })

  set("WhichKeyNormal", { fg = colors.fg, bg = colors.bg_panel })
  set("WhichKeyBorder", { fg = colors.subtle, bg = colors.bg_panel })
  set("WhichKeyFloat", { fg = colors.fg, bg = colors.bg_panel })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = apply_highlights,
})

apply_highlights()
