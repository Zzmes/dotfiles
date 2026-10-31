return {
  "hedyhli/outline.nvim",
  opts = function(_, opts)
    opts.preview_window = vim.tbl_deep_extend("force", opts.preview_window or {}, {
      auto_preview = true,
      border = "rounded",
    })
    -- Include variables and parameters returned by the language server.
    opts.symbols = opts.symbols or {}
    opts.symbols.filter = nil
    -- Arrow keys browse the preview; explicit jumps use Enter or Ctrl+j/k.
    opts.keymaps = vim.tbl_extend("force", opts.keymaps or {}, {
      up_and_jump = "<C-k>",
      down_and_jump = "<C-j>",
    })
  end,
}
