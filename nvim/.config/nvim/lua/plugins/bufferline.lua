return {
  "akinsho/bufferline.nvim",
  opts = function(_, opts)
    opts.options = opts.options or {}
    opts.options.indicator = { style = "underline" }
    local presets = opts.options.style_preset or {}
    if type(presets) ~= "table" then presets = { presets } end
    local no_italic = require("bufferline").style_preset.no_italic
    if not vim.tbl_contains(presets, no_italic) then table.insert(presets, no_italic) end
    opts.options.style_preset = presets
    -- Use Catppuccin's integration only while that theme is active.
    local theme_highlights = opts.highlights
    opts.highlights = function(defaults)
      if (vim.g.colors_name or ""):find("catppuccin", 1, true) and theme_highlights then
        local highlights = type(theme_highlights) == "function" and theme_highlights(defaults) or theme_highlights
        local accent = highlights.indicator_selected.fg
        for name, default in pairs(defaults.highlights) do
          if default.underline then
            highlights[name] = vim.tbl_extend("force", highlights[name] or {}, { sp = accent })
          end
        end
        return highlights
      end
      return defaults.highlights
    end
    opts.options.offsets = opts.options.offsets or {}
    for _, offset in ipairs(opts.options.offsets) do
      if offset.filetype == "snacks_layout_box" then
        offset.separator = "▕"
      end
    end
    table.insert(opts.options.offsets, {
      filetype = "Outline",
      text = "Outline",
      highlight = "Directory",
      text_align = "center",
      separator = true,
    })
    table.insert(opts.options.offsets, {
      filetype = "sidekick_terminal",
      text = "Sidekick",
      highlight = "Directory",
      text_align = "center",
      separator = true,
    })
  end,
}
