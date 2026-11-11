-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.relativenumber = false -- ❌ 关闭相对行号，显示真实行号

-- Keep native popup menus opaque and add a border where supported.
opt.pumblend = 0
if vim.fn.exists("+pumborder") == 1 then
  opt.pumborder = "rounded"
end

-- Neovim renders these right-click menu separators as blank rows.
vim.cmd([[
  silent! aunmenu PopUp.-1-
  silent! aunmenu PopUp.-2-
]])

if vim.env.SSH_CONNECTION or vim.env.SSH_TTY then
  -- Forward clipboard writes from embedded terminals to the SSH client.
  vim.g.clipboard = "osc52"
  if vim.g.loaded_clipboard_provider ~= nil then
    vim.g.loaded_clipboard_provider = nil
    vim.cmd.runtime("autoload/provider/clipboard.vim")
  end
end
