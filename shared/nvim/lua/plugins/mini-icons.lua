-- ~/.config/nvim/lua/plugins/mini-icons.lua

return {
  "nvim-mini/mini.icons",
  opts = {
    style = "glyph",

    default = {
      file = { glyph = "󰈔", hl = "MiniIconsGrey" },
      directory = { glyph = "󰉋", hl = "MiniIconsBlue" },
    },

    directory = {
      [".git"] = { glyph = "", hl = "MiniIconsOrange" },
      ["git"] = { glyph = "", hl = "MiniIconsOrange" },
      [".github"] = { glyph = "", hl = "MiniIconsAzure" },
      [".config"] = { glyph = "", hl = "MiniIconsCyan" },
      ["config"] = { glyph = "", hl = "MiniIconsCyan" },
      ["zsh"] = { glyph = "", hl = "MiniIconsGreen" },
      ["src"] = { glyph = "󰴉", hl = "MiniIconsGreen" },
      ["build"] = { glyph = "", hl = "MiniIconsGrey" },
      ["asset"] = { glyph = "󰉏", hl = "MiniIconsYellow"},
    },

    extension = {
      c = { glyph = "", hl = "MiniIconsAzure"},
      cpp = { glyph = "", hl = "MiniIconsAzure"},
      zsh = { glyph = "$", hl = "MiniIconsGreen" },
      sh = { glyph = "$", hl = "MiniIconsGreen" },
      lua = { glyph = "󰢱", hl = "MiniIconsAzure" },
      md = { glyph = "󰍔", hl = "MiniIconsYellow" },
      json = { glyph = "", hl = "MiniIconsYellow" },
      js = { glyph = "󰌞", hl = "MiniIconsYellow" },
      ts = { glyph = "󰛦", hl = "MiniIconsAzure" },
      vue = { glyph = "󰡄", hl = "MiniIconsGreen" },
      pdf = { glyph = "", hl = "MiniIconsRed" },
      jpg = { glyph = "󰈥", hl = "MiniIconsOrange" },
      png = { glyph = "󰈟", hl = "MiniIconsOrange" },
      tar = { glyph = "󰛫", hl = "MiniIconsCyan" },
      zip = { glyph = "󰛫", hl = "MiniIconsCyan" },
      toml = { glyph = "", hl = "MiniIconsOrange" },
      yml = { glyph = "", hl = "MiniIconsOrange" },
    },

    file = {
      [".gitignore"] = { glyph = "", hl = "MiniIconsRed" },
      [".gitconfig"] = { glyph = "", hl = "MiniIconsOrange" },
      ["gitconfig"] = { glyph = "", hl = "MiniIconsOrange" },
      ["gitconfig-main"] = { glyph = "", hl = "MiniIconsOrange" },
      ["gitconfig-test"] = { glyph = "", hl = "MiniIconsOrange" },
      ["LICENSE"] = { glyph = "󰿃", hl = "MiniIconsCyan" },
      ["CHANGELOG"] = { glyph = "󰗀", hl = "MiniIconsPurple" },
      ["zshrc"] = { glyph = "$", hl = "MiniIconsGreen" },
      ["zshenv"] = { glyph = "$", hl = "MiniIconsGreen" },
      ["p10k.zsh"] = { glyph = "$", hl = "MiniIconsGreen" },
      ["README.md"] = { glyph = "󰍔", hl = "MiniIconsYellow" },
      ["init.lua"] = { glyph = "󰢱", hl = "MiniIconsAzure" },
    },

    filetype = {
      zsh = { glyph = "$", hl = "MiniIconsGreen" },
      git = { glyph = "", hl = "MiniIconsOrange" },
      json = { glyph = "", hl = "MiniIconsYellow" },
      lua = { glyph = "󰢱", hl = "MiniIconsAzure" },
      help = { glyph = "󰋖", hl = "MiniIconsPurple" },
    },
  },

  config = function(_, opts)
    require("mini.icons").setup(opts)

    require("mini.icons").mock_nvim_web_devicons()
  end,
}
