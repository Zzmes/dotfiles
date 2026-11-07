-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.cmd([[
  highlight CursorLineNr guifg=#a6e3a1  " 当前行号（绿色）
]])

-- Markdown source should not flag technical terms as English misspellings.
vim.api.nvim_create_autocmd({ "FileType", "BufWinEnter" }, {
  group = vim.api.nvim_create_augroup("markdown_no_spell", { clear = true }),
  callback = function()
    if vim.bo.filetype == "markdown" or vim.bo.filetype == "markdown.mdx" then
      vim.opt_local.spell = false
    end
  end,
})

if vim.env.SSH_CONNECTION or vim.env.SSH_TTY then
  vim.opt.clipboard = ""
  local copy = require("vim.ui.clipboard.osc52").copy("+")
  vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("ssh_clipboard", { clear = true }),
    callback = function()
      local event = vim.v.event
      if event.operator == "y" and event.regname == "" then
        copy(event.regcontents)
      end
    end,
  })
end
