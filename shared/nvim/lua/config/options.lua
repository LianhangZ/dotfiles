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

vim.opt.guicursor = {
  "n-v-c:block-blinkwait500-blinkon500-blinkoff500",
  "i-ci-ve:ver25-blinkwait500-blinkon500-blinkoff500",
  "r-cr:hor20-blinkwait500-blinkon500-blinkoff500",
}