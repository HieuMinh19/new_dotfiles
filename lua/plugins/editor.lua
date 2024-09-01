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
}
