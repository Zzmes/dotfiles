-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Match the cursor shapes and blinking used by the reference configuration.
if vim.env.NVIM_MODE ~= "kitty-copy" then
  opt.guicursor = table.concat({
    "n-v-c:block",
    "i-ci-ve:ver25",
    "r-cr:hor20",
    "o:hor50",
    "a:blinkwait700-blinkoff400-blinkon250",
    "sm:block-blinkwait175-blinkoff150-blinkon175",
  }, ",")
end

-- Keep document symbols out of the statusline.
vim.g.trouble_lualine = false

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
