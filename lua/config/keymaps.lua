-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local uconv = require("nvim-uconv")
local opts = { noremap = true, silent = true }

vim.keymap.del("n", "gw")
vim.keymap.del("x", "gw")

vim.keymap.del("n", "<leader>qq")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

vim.keymap.set("n", "<A-h>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<A-j>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<A-k>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<A-l>", ":wincmd l<CR>", opts)

vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

vim.keymap.set("n", "<F1>", ":BufferLineCycleNext<CR>", opts)
vim.keymap.set("n", "<F2>", ":BufferLineCyclePrev<CR>", opts)

vim.keymap.set("n", "<F4>", ":%s/\\s\\+$//e<CR>", opts)
vim.keymap.set("n", "<esc>", ":noh<CR>", opts)
vim.keymap.set("x", "<leader>p", '"_dP', opts)
vim.keymap.set("n", "<F3>", ":set list!<CR>", opts)
vim.keymap.set("n", "*", ":keepjumps normal! mi*`i<CR>", opts)

vim.keymap.set({ "n", "v" }, "<leader>tr", uconv.angle.degrees_to_radians, opts)
vim.keymap.set({ "n", "v" }, "<leader>td", uconv.angle.radians_to_degrees, opts)
vim.keymap.set({ "n", "v" }, "<leader>fm", uconv.prefix.from_milli, opts)
vim.keymap.set({ "n", "v" }, "<leader>tm", uconv.prefix.to_milli, opts)
