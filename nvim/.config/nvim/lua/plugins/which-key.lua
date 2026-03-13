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

return {
  "folke/which-key.nvim",
  opts = {
    filter = function(mapping)

      local is_snacks_explorer = vim.bo.filetype == "snacks_picker_list"

      if is_snacks_explorer then
        return mapping.lhs == "a" 
          or mapping.lhs == "d"
          or mapping.lhs == "?"
      end

      local mine = {
        [" e"] = true,    -- Explorer
        [" t"] = true,    -- terminal
        [" o"] = true,    -- Outline
        ["H"] = true,     -- move left
        ["L"] = true,     -- move right
        [" db"] = true,   -- delete buffer
        [" lg"] = true,   -- lazygit
        [" hi"] = true,   -- hunk inline
        [" rh"] = true,   -- reset hunk
        [" rb"] = true,   -- reset buffer
        [" rn"] = true,   -- rename
        [" nh"] = true,   -- Noise History
        ["gcc"] = true,   -- comment
      }
      return mine[mapping.lhs] == true
    end,
  },
}
