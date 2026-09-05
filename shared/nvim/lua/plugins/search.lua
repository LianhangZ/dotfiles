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
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>ff", false }, -- Find File (Root Dir)
      { "<leader>fg", false }, -- Live Grep
      { "<leader><leader>", function()
          require("telescope.builtin").find_files()
        end, desc = "󰍉 Find File"
      }, -- Find File (Root Dir)
      { "<leader>g", function()
          require("telescope.builtin").live_grep()
        end, desc = "󰍉 Grep"
      }, -- Live Grep
    },
    opts = function(_, opts)
      local actions = require("telescope.actions")
      opts.defaults = opts.defaults or {}
      opts.defaults.layout_strategy = "horizontal"
      opts.defaults.layout_config = {
        horizontal = {
          preview_width = 0.55,
          preview_cutoff = 1,
        },
        width = 0.95,
        height = 0.9,
      }
      opts.defaults.mappings = {
        i = {
          ["<C-j>"] = actions.move_selection_next,
          ["<C-k>"] = actions.move_selection_previous,
          ["<Esc>"] = actions.close,
        },
      }
      opts.defaults.file_ignore_patterns = {
        "%.git/",
      }

      opts.pickers = {
        find_files = {
          hidden = true,
        },
      }
    end,
  },
  {
    "folke/snacks.nvim",
    keys = {
      { "<leader><leader>", false },
      { "<leader>ff", false },  -- Find File
      { "<leader>fF", false },
      { "<leader>fg", false },  -- Live Grep
      { "<leader>fp", false },  -- Find Projects
      {
        "<leader>p",
        function()
          Snacks.picker.projects()
        end,
        desc = "󰙅 Projects",
      },
    },
    opts = function(_, opts)
      opts.picker = vim.tbl_deep_extend("force", opts.picker or {}, {
        sources = {
          projects = {
            layout = {
              preset = "default",
            },
            confirm = function(picker, item)
              picker:close()
              if not item or not item.file then
                return
              end

              local dir = normalize_dir(item.file)
              if not dir then
                return
              end

              vim.cmd.tcd(vim.fn.fnameescape(dir))
              delete_dir_buffer(dir)
              Snacks.picker.files({ cwd = dir })
            end,
            dev = {
              "~/LianhangZ",
              "~/Library/Mobile Documents/iCloud~md~obsidian/Documents",
            },
            recent = false, -- project directories of recent file
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
        },
      })
    end,
  },
}
