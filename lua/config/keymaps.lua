-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set({ "n", "v" }, "J", "5j", {})
vim.keymap.set({ "n", "v" }, "K", "5k", {})
vim.keymap.set("n", "<C-a>", "ggVG", {})
vim.keymap.set("n", "<C-i>", function()
  vim.cmd("vs")
  vim.cmd("wincmd l")
  vim.cmd("e out")
  vim.cmd("sp")
  vim.cmd("wincmd k")
  vim.cmd("e in")
  vim.cmd("wincmd h")
end, {})
vim.keymap.set("n", "<C-o>", function()
  vim.cmd("only")
end, {})
vim.keymap.set("n", "<C-c>", function()
  vim.cmd("!g++ -DDEBUG " .. vim.fn.expand("%") .. " && " .. "cat in | ./a.out > out")
end, {})
