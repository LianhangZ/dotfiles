local function transparent()
  local groups = {
    "Normal",
    "NormalNC",
    "NormalFloat",
    "FloatBorder",

    -- Snacks
    "SnacksNormal",
    "SnacksBorder",

    -- Explorer
    "SnacksPicker",
    "SnacksPickerDir",
    "SnacksPickerBorder",

    -- Terminal
    "SnacksTerminal",

    -- LazyVim dashboard
    "SnacksDashboardNormal",

    -- Statuscolumn
    "SignColumn",
    "FoldColumn",

    -- which-key
    "WhichKeyNormal",
    "WhichKeyBorder",
    "WhichKeyFloat",

    -- fallback
    "NormalFloat",
    "FloatBorder",
  }

  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = "NONE" })
  end
end

local function bold_window_separator()
  vim.opt.fillchars:append({
    horiz = "━",
    horizdown = "┳",
    horizup = "┻",
    vert = "┃",
    vertleft = "┫",
    vertright = "┣",
    verthoriz = "╋",
  })

  vim.api.nvim_set_hl(0, "WinSeparator", {
    fg = "#ff9e64",
    bg = "NONE",
    bold = true,
  })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    transparent()
    bold_window_separator()
  end,
})

transparent()
bold_window_separator()
