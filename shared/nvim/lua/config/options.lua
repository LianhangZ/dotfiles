-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true

vim.g.autoformat = false

opt.fixeol = false  -- fix end of line

opt.termguicolors = true

opt.number = true
opt.relativenumber = false
opt.cursorline = true
opt.cursorlineopt = "number,line"
opt.signcolumn = "yes"
opt.foldcolumn = "0"

opt.laststatus = 3
opt.showtabline = 2
opt.showmode = false
opt.cmdheight = 1
opt.ruler = false

opt.splitright = true
opt.splitbelow = true
opt.equalalways = false

opt.winblend = 0
opt.pumblend = 0
opt.winborder = "rounded"

opt.fillchars = {
  eob = " ",
  fold = " ",
  foldopen = "",
  foldsep = " ",
  foldclose = "",
  horiz = "─",
  horizdown = "┬",
  horizup = "┴",
  vert = "│",
  vertleft = "┤",
  vertright = "├",
  verthoriz = "┼",
}

vim.opt.guicursor = {
  "n-v-c:block-blinkwait500-blinkon500-blinkoff500",
  "i-ci-ve:ver25-blinkwait500-blinkon500-blinkoff500",
  "r-cr:hor20-blinkwait500-blinkon500-blinkoff500",
}
