-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local builtin = require("telescope.builtin")
local LazyVim = require("lazyvim.util")
local snacks = require("snacks")

keymap.set("n", "<C-p>", builtin.find_files, {})
keymap.set("n", "<leader>pf", LazyVim.pick("files"), { desc = "Find files" })

keymap.set("n", "<C-b>", function()
  snacks.picker.explorer()
end, { desc = "Open file explorer" })

keymap.set("n", "<leader>th", "<cmd>BufferLineCyclePrev<cr>", {})
keymap.set("n", "<leader>tl", "<cmd>BufferLineCycleNext<cr>", {})
keymap.set("n", "<leader>tmh", "<cmd>BufferLineMovePrev<cr>", {})
keymap.set("n", "<leader>tml", "<cmd>BufferLineMoveNext<cr>", {})

keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jj" })

-- keymap.set("n", "<leader>y", function()
--   require("telescope").extensions.yank_history.yank_history({})
-- end, { desc = "Open Yank History" })

-- keymap.set("n", "<leader>e", "<cmd>Neotree reveal filesystem left<cr>", {})
-- keymap.set("n", "<C-b>", "<cmd>Neotree reveal filesystem left<cr>", {})
