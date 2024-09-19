return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    enabled = function()
      return LazyVim.pick.want() == "telescope"
    end,
    version = false, -- telescope did only one release, so use HEAD for now

    keys = {
      {
        "<C-p>",
        LazyVim.pick("files", { root = false }),
        desc = "Find Files (cwd), respects .gitignore,",
      },
      {
        ";",
        "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
        desc = "Buffers, respects .gitignore",
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    keys = {
      { "<C-d>", "<leader>fe", desc = "Explorer NeoTree (Root Dir)", remap = true },
    },
  },
  {
    "f-person/git-blame.nvim",
    -- load the plugin at startup
    event = "VeryLazy",
    -- Because of the keys part, you will be lazy loading this plugin.
    -- The plugin wil only load once one of the keys is used.
    -- If you want to load the plugin at startup, add something like event = "VeryLazy",
    -- or lazy = false. One of both options will work.
    opts = {
      -- your configuration comes here
      -- for example
      enabled = true, -- if you want to enable the plugin
      delay = 2000, --- 2 seconds
      message_template = " <summary> • <date> • <author> • <<sha>>", -- template for the blame message, check the Message template section for more options
      date_format = "%m-%d-%Y %H:%M:%S", -- template for the date, check Date format section for more options
      virtual_text_column = 1, -- virtual text start column, check Start virtual text at column section for more options
    },
  },
}
