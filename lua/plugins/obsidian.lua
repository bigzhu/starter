return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  -- dir = "~/obsidian.nvim",
  lazy = false,
  -- keys = {
  --   { "<C-g>", "<cmd>ObsidianToday<CR>", desc = "Cheese create a new daily note", mode = { "n" } },
  --   -- 这里的设置没法盖过 系统默认的值, 只能在 keymaps.lua 再设置一遍
  --   { "<C-f>", "<cmd>ObsidianQuickSwitch<CR>", desc = "Cheese search by file name", mode = { "n" } },
  --   { "<C-j>", "<cmd>ObsidianSearch<CR>", desc = "Cheese search by content", mode = { "n" } },
  --   { "<F4>", "<cmd>ObsidianOpen<CR>", desc = "Open current note in the Obsidian app", mode = { "n" } },
  -- },
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    "BufReadPre path/to/my-vault/**.md",
    "BufNewFile path/to/my-vault/**.md",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
    -- see below for full list of optional dependencies 👇
  },
  opts = {
    log_level = vim.log.levels.ERROR,
    dir = "~/Sync/home/cheese", -- no need to call 'vim.fn.expand' here
    sort_by = "modified",
    sort_reversed = true,
    -- 避免 https://github.com/epwalsh/obsidian.nvim/issues/163 的报错
    mappings = {},
    -- 关闭 frontmatter
    disable_frontmatter = false,
    -- Optional, alternatively you can customize the frontmatter data.
    note_frontmatter_func = function(note)
      -- This is equivalent to the default frontmatter function.
      local out = { id = note.id, tags = note.tags }
      -- `note.metadata` contains any manually added fields in the frontmatter.
      -- So here we just make sure those fields are kept in the frontmatter.
      -- if note.metadata ~= nil and require("obsidian").util.table_length(note.metadata) > 0 then
      if note.metadata ~= nil then
        for k, v in pairs(note.metadata) do
          out[k] = v
        end
      end
      return out
    end,

    daily_notes = {
      -- Optional, if you want to change the date format for daily notes.
      date_format = "%Y-%m-%d",
    },
  },
}
