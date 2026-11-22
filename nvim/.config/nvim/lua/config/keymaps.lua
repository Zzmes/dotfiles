-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Split windows with Shift + backslash (|) and Shift + minus (_).
vim.keymap.set("n", "|", "<C-W>v", { desc = "Split Window Right", remap = true })
vim.keymap.set("n", "_", "<C-W>s", { desc = "Split Window Below", remap = true })

vim.keymap.set("n", "<leader>gt", function()
  if vim.fn.executable("tig") == 0 then
    vim.notify("Tig is not installed or is not on PATH", vim.log.levels.WARN)
    return
  end
  local root = vim.fs.root(0, ".git") or vim.fs.root(vim.fn.getcwd(), ".git")
  if not root then
    vim.notify("No Git repository found", vim.log.levels.WARN)
    return
  end
  Snacks.terminal.toggle({ "tig" }, { cwd = root, win = { position = "float", title = " Tig " } })
end, { desc = "Tig (Git History)" })
