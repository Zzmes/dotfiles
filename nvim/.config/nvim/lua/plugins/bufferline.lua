return {
  "akinsho/bufferline.nvim",
  opts = function(_, opts)
    opts.options = opts.options or {}
    local presets = opts.options.style_preset or {}
    if type(presets) ~= "table" then presets = { presets } end
    local no_italic = require("bufferline").style_preset.no_italic
    if not vim.tbl_contains(presets, no_italic) then table.insert(presets, no_italic) end
    opts.options.style_preset = presets
    -- Use Catppuccin's integration only while that theme is active.
    local theme_highlights = opts.highlights
    opts.highlights = function(defaults)
      if (vim.g.colors_name or ""):find("catppuccin", 1, true) and theme_highlights then
        return type(theme_highlights) == "function" and theme_highlights(defaults) or theme_highlights
      end
      return defaults.highlights
    end
    opts.options.offsets = opts.options.offsets or {}
    table.insert(opts.options.offsets, {
      filetype = "Outline",
      text = "Outline",
      highlight = "Directory",
      text_align = "center",
      separator = true,
    })
  end,
}
