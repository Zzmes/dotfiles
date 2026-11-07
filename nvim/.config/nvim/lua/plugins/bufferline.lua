return {
  "akinsho/bufferline.nvim",
  opts = function(_, opts)
    opts.options = opts.options or {}
    opts.options.indicator = { style = "none" }
    local presets = opts.options.style_preset or {}
    if type(presets) ~= "table" then presets = { presets } end
    local no_italic = require("bufferline").style_preset.no_italic
    if not vim.tbl_contains(presets, no_italic) then table.insert(presets, no_italic) end
    opts.options.style_preset = presets
    -- Use Catppuccin's integration only while that theme is active.
    local theme_highlights = opts.highlights
    opts.highlights = function(defaults)
      local highlights = defaults.highlights
      if (vim.g.colors_name or ""):find("catppuccin", 1, true) and theme_highlights then
        highlights = type(theme_highlights) == "function" and theme_highlights(defaults) or theme_highlights
      end
      for name in pairs(defaults.highlights) do
        if name:match("_selected$") then
          highlights[name] = vim.tbl_extend("force", highlights[name] or {}, {
            bg = { highlight = "CursorLine", attribute = "bg" },
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
      text = function()
        local tool, rightmost = nil, -1
        for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
          local buf = vim.api.nvim_win_get_buf(win)
          if vim.bo[buf].filetype == "sidekick_terminal" and vim.api.nvim_win_get_config(win).relative == "" then
            local col = vim.api.nvim_win_get_position(win)[2]
            if col > rightmost then
              tool, rightmost = vim.b[buf].sidekick_cli, col
            end
          end
        end
        local name = tool and tool.name
        if not name then return "Sidekick" end
        local labels = { claude = "Claude Code", opencode = "OpenCode", amazon_q = "Amazon Q" }
        return labels[name] or (name:gsub("^%l", string.upper))
      end,
      highlight = "Directory",
      text_align = "center",
      separator = true,
    })
  end,
}
