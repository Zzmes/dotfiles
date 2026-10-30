return {
  "akinsho/bufferline.nvim",
  opts = function(_, opts)
    opts.options = opts.options or {}
    local presets = opts.options.style_preset or {}
    if type(presets) ~= "table" then presets = { presets } end
    local no_italic = require("bufferline").style_preset.no_italic
    if not vim.tbl_contains(presets, no_italic) then table.insert(presets, no_italic) end
    opts.options.style_preset = presets
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
