-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local uconv = require("nvim-uconv")
local nvim_tmux_nav = require("nvim-tmux-navigation")
local opts = { noremap = true, silent = true }

-- gw is by default used for text reflow. LazyVim overwrites it which I don't like, thus I'm removing it.
-- vim.keymap.del("n", "gw")
-- vim.keymap.del("x", "gw")

vim.keymap.del("n", "<leader>qq")
vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")

-- In visual mode, allow moving the selected block up and down through text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Keymaps for moving between windows
vim.keymap.set("n", "<A-h>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<A-j>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<A-k>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<A-l>", ":wincmd l<CR>", opts)

-- Scroll but try keep cursor in the center of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Keymaps for moving between buffers
vim.keymap.set("n", "<F1>", ":BufferLineCycleNext<CR>", opts)
vim.keymap.set("n", "<F2>", ":BufferLineCyclePrev<CR>", opts)
vim.keymap.set("n", "<F8>", ":Inspect<CR>", opts)

-- Remove trailling spaces
vim.keymap.set("n", "<F4>", ":%s/\\s\\+$//e<CR>", opts)

-- Remove search highlighting
vim.keymap.set("n", "<esc>", ":noh<CR>", opts)

-- Paste without overwriting the default register
vim.keymap.set("x", "<leader>p", '"_dP', opts)

-- Toggle list mode
vim.keymap.set("n", "<F3>", ":set list!<CR>", opts)

vim.keymap.set("n", "*", ":keepjumps normal! mi*`i<CR>", opts)

vim.keymap.set({ "n", "v" }, "<leader>tr", uconv.angle.degrees_to_radians, {})
vim.keymap.set({ "n", "v" }, "<leader>td", uconv.angle.radians_to_degrees, {})
vim.keymap.set({ "n", "v" }, "<leader>fm", uconv.prefix.from_milli, {})
vim.keymap.set({ "n", "v" }, "<leader>tm", uconv.prefix.to_milli, {})

vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
vim.keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
