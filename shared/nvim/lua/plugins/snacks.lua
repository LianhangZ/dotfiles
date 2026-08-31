-- ~/.config/nvim/lua/plugins/snacks.lua
local function normalize_dir(path)
  if not path or path == "" then
    return nil
  end

  return vim.fs.normalize(vim.fn.fnamemodify(path, ":p")):gsub("/$", "")
end

local function delete_dir_buffer(dir)
  dir = normalize_dir(dir)
  if not dir then
    return
  end

  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    local name = normalize_dir(vim.api.nvim_buf_get_name(buf))
    if name == dir and vim.fn.isdirectory(name) == 1 then
      pcall(vim.api.nvim_buf_delete, buf, { force = true })
    end
  end
end

return {
  "folke/snacks.nvim",
  init = function()
    vim.api.nvim_create_autocmd("UIEnter", {
      group = vim.api.nvim_create_augroup("dotfiles_snacks_dashboard_startup", { clear = true }),
      once = true,
      callback = function()
        if vim.fn.argc(-1) ~= 1 then
          return
        end

        local arg = vim.fn.argv(0)
        if arg == "" or vim.fn.isdirectory(arg) ~= 1 then
          return
        end

        local dir_buf = vim.api.nvim_get_current_buf()
        vim.cmd.cd(vim.fn.fnameescape(arg))
        vim.schedule(function()
          if vim.api.nvim_buf_is_valid(dir_buf) and normalize_dir(vim.api.nvim_buf_get_name(dir_buf)) == normalize_dir(arg) then
            vim.cmd.enew()
            delete_dir_buffer(arg)
          end

          if vim.bo.filetype == "snacks_dashboard" then
            return
          end

          require("snacks").dashboard({ buf = 0, win = 0 })
        end)
      end,
    })
  end,
  keys = {
    { "<leader>bd", false },  -- Delete Buffer
    { "<leader>bo", false },  -- Delete Other Buffer
    { "<leader>e", false },
    { "<leader>d", function() Snacks.bufdelete() end,
      desc = " Delete Buffer"},
  },
  opts = function(_, opts)
    opts.dashboard = vim.tbl_deep_extend("force", opts.dashboard or {}, {
      enabled = true,
      width = 48,
      preset = {
        header = [[
██████╗  ██████╗ ████████╗███████╗
██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝
██║  ██║██║   ██║   ██║   ███████╗
██║  ██║██║   ██║   ██║   ╚════██║
██████╔╝╚██████╔╝   ██║   ███████║
╚═════╝  ╚═════╝    ╚═╝   ╚══════╝]],
        keys = {
          -- TODO { icon = " ", key = "p", desc = "Project", action = "" },
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "g", desc = "Grep", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = "󰙅 ", key = "e", desc = "Explorer", action = ":NvimTreeToggle" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', { cwd = vim.fn.stdpath('config') })" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
      sections = {
        { section = "header", padding = 2 },
        { section = "keys", gap = 1, padding = 1 },
        { section = "startup" },
      },
    })

    opts.explorer = vim.tbl_deep_extend("force", opts.explorer or {}, {
      enabled = false,
    })

  end,
}
