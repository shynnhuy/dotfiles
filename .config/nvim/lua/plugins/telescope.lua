return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").load_extension("pomodori")
  end,
  keys = {
    { "<C-p>", require("lazyvim.util").pick("files"), desc = "Find files (Root Dir)" },
  },
}
