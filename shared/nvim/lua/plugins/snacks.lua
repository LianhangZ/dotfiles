-- ~/.config/nvim/lua/plugins/snacks.lua
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

        vim.cmd.cd(vim.fn.fnameescape(arg))
        vim.schedule(function()
          if vim.bo.filetype == "snacks_dashboard" then
            return
          end

          require("snacks").dashboard({ buf = 0, win = 0 })
        end)
      end,
    })
  end,
  keys = {
    { "<leader><leader>", false },
    { "<leader>bd", false },  -- Delete Buffer
    { "<leader>bo", false },  -- Delete Other Buffer
    { "<leader>e", false },
    { "<leader>ft", false },  -- Floating Terminal
    { "<leader>ff", false },  -- Find File
    { "<leader>fg", false },  -- Live Grep
    { "<leader>fF", false },
    { "<leader>fp", false },  -- Find Projects
    { "<leader>d", function() Snacks.bufdelete() end,
      desc = " Delete Buffer"},
    { "<leader>tb",
      function() Snacks.terminal(nil, {win = {position = "bottom", height = 0.35,}}) end,
      desc = " Bottom Terminal"
    },
    { "<leader>tr",
      function() Snacks.terminal(nil, {win = {position = "right", width = 0.26,}}) end,
      desc = " Right Terminal"
    },
    { "<leader>p", function () Snacks.picker.projects() end,
      desc = "󰙅 Projects"},
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

    opts.terminal = vim.tbl_deep_extend("force", opts.terminal or {}, {
      win = {
        position = "right",
        width = 0.26,
      },
    })

    opts.explorer = vim.tbl_deep_extend("force", opts.explorer or {}, {
      enabled = false,
    })

    opts.picker = vim.tbl_deep_extend("force", opts.picker or {}, {
      sources = {
        projects = {
          layout = {
            preset = "default",
          },
          dev = {
            "~/LianhangZ",
            "~/Library/Mobile Documents/iCloud~md~obsidian/Documents"
          },
          patterns = {
            ".git",
            "Makefile",
            "CMakeLists.txt",
            "README.md",
          },
        },
        files = {
          hidden = true,
          layout = {
            preset = "default",
            preview = true,
          },
        },
        grep = {
          layout = {
            preset = "default",
            preview = true,
          },
        },
      }
    })
  end,
}
