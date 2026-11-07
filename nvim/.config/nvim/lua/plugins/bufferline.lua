return {
  "akinsho/bufferline.nvim",
  opts = function(_, opts)
    local remote = vim.env.SSH_CONNECTION ~= nil or vim.env.SSH_TTY ~= nil
    opts.options = opts.options or {}
    opts.options.indicator = { style = remote and "none" or "underline" }
    local presets = opts.options.style_preset or {}
    if type(presets) ~= "table" then presets = { presets } end
    local no_italic = require("bufferline").style_preset.no_italic
    if not vim.tbl_contains(presets, no_italic) then table.insert(presets, no_italic) end
    opts.options.style_preset = presets
    -- Use Catppuccin's integration only while that theme is active.
    local theme_highlights = opts.highlights
    opts.highlights = function(defaults)
      local highlights = defaults.highlights
      local catppuccin = (vim.g.colors_name or ""):find("catppuccin", 1, true) and theme_highlights
      if catppuccin then
        highlights = type(theme_highlights) == "function" and theme_highlights(defaults) or theme_highlights
      end
      for name, default in pairs(defaults.highlights) do
        if remote and name:match("_selected$") then
          highlights[name] = vim.tbl_extend("force", highlights[name] or {}, {
            bg = { highlight = "CursorLine", attribute = "bg" },
          })
        elseif catppuccin and default.underline then
          highlights[name] = vim.tbl_extend("force", highlights[name] or {}, {
            sp = highlights.indicator_selected.fg,
          })
        end
      end
      return highlights
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
