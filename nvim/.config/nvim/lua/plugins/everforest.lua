return {
  "sainnhe/everforest",
  lazy = false,
  init = function()
    vim.g.everforest_disable_italic_comment = 1
    vim.g.everforest_transparent_background = 2
    vim.api.nvim_create_autocmd("ColorScheme", {
      group = vim.api.nvim_create_augroup("EverforestPreferences", { clear = true }),
      pattern = "everforest",
      callback = function()
        -- Everforest's Markdown emphasis ignores its italic options.
        for name, hl in pairs(vim.api.nvim_get_hl(0, {})) do
          if hl.italic then
            hl.italic, hl.default = false, nil
            if hl.cterm then hl.cterm.italic = false end
            vim.api.nvim_set_hl(0, name, hl)
          end
        end
        for i, color in ipairs({ "Red", "Orange", "Yellow", "Green", "Blue", "Violet" }) do
          vim.api.nvim_set_hl(0, "SnacksIndent" .. i, { link = "RainbowDelimiter" .. color })
        end
      end,
    })
  end,
}
