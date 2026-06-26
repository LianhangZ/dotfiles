-- ~/.config/nvim/lua/plugins/which-key.lua

-- 'which-key' scans the nvim keymaps.
-- Each mapping it finds is named as filter(mapping)
-- If the function return true, that mapping is added to the popup.
-- "only show mappings whose left-hand side is exactly Space-t"

-- The `mapping` object has fields like:
-- mapping.lhs   -- shortcut, e.g. " t", "<leader>t", "gd"
-- mapping.desc  -- description, e.g. "Terminal (float)"
-- mapping.mode  -- mode, e.g. "n"
-- mapping.rhs   -- command/function behind the mapping

-- icon: 󰈔 󰉋 󰙅; 󰊢 󰘬;  ; 󰍉 󰱼; 󱞁 󰃤 󰨞;  󰅖; 󰩹  󰉖 󰆴 󰗨; 󰏫  󰷹 󰑕 󱍸; 󰐕 󰐗 󰝒

local keymaps = {
  -- ["f"] = true,
  ["G"] = true,     -- last line
  ["H"] = true,     -- move left
  ["L"] = true,     -- move right
  ["  "] = true,    -- find file
  [" bo"] = true,   -- delete other buffers
  [" d"] = true,    -- delete buffer
  [" e"] = true,    -- Explorer
  -- [" fp"] = true,   -- Project
  [" g"] = true,    -- live grep
  [" h"] = true,    -- preview hunk inline
  [" l"] = true,    -- lazygit
  [" t"] = true,    -- terminal
  [" n"] = true,    -- noise history
  -- [" nh"] = true,   -- Noise History
  [" o"] = true,    -- Outline
  [" p"] = true,    -- Project
  -- [" f"] = true,    -- find group
  -- [" hi"] = true,   -- hunk inline
  [" rh"] = true,   -- reset hunk
  [" rb"] = true,   -- reset buffer
  -- [" rn"] = true,   -- rename
  ["gcc"] = true,   -- comment
  ["0"] = true,     -- start of line
  ["$"] = true,     -- end of line
  ["gg"] = true,    -- first line
  -- [";"] = true,     -- next ftFT
  ["?"] = true,     -- search backward
  ["/"] = true,     -- search forward
  ["#"] = true,
  -- ["<<"] = true,
  -- [" <tab>"] = true,
  -- ["-"] = true,
  -- ["="] = true,
}

local snacks_explorer_keymaps = {
  ["a"] = true,
  ["d"] = true,
  ["h"] = true,
  ["H"] = true,
  ["r"] = true,
  ["?"] = true,
}

return {
  "folke/which-key.nvim",
  opts = {
    icons = {
      mappings = false,
      -- group = "",
    },
    -- spec = {
    --   { "<leader>f", group = "󰍉 Find" },
    -- },
    filter = function(mapping)
      if vim.bo.filetype == "snacks_picker_list" then
        return snacks_explorer_keymaps[mapping.lhs] == true
      end

      -- if mapping.group then
      --   return true
      -- end

      return keymaps[mapping.lhs] == true
    end,
  },
}
