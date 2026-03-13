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

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = transparent,
})

transparent()
