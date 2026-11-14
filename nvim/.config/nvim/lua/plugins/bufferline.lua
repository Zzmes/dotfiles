return {
  "akinsho/bufferline.nvim",
  config = function(_, opts)
    require("bufferline").setup(opts)
    local render = nvim_bufferline
    vim.o.tabline = "%!v:lua.dotfiles_bufferline()"
    _G.dotfiles_bufferline = function()
      local line = render()
      -- Bufferline draws separators between buffers but omits the final one.
      local fill = line:find("%#BufferLineFill#%=", 1, true)
      if not fill or not line:find("%#BufferLineBuffer", 1, true) then return line end
      local alignment_end = fill + #"%#BufferLineFill#%=" - 1
      local content = line:sub(1, alignment_end - 2) .. line:sub(alignment_end + 1)
      local width = vim.api.nvim_eval_statusline(content, { use_tabline = true }).width
      if width >= vim.o.columns then return line end
      return line:sub(1, fill - 1) .. "%#BufferLineSeparator#│" .. line:sub(fill)
    end
    -- Refresh Bufferline when restoring a session.
    vim.api.nvim_create_autocmd({ "BufAdd", "BufDelete" }, {
      callback = function()
        vim.schedule(function() pcall(render) end)
      end,
    })
  end,
  opts = function(_, opts)
    opts.options = opts.options or {}
    opts.options.indicator = { style = "none" }
    opts.options.separator_style = { "│", "│" }
    opts.options.diagnostics = false
    opts.options.diagnostics_indicator = nil
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
        if name ~= "group_label" and name ~= "group_separator" then
          highlights[name] = vim.tbl_extend("force", highlights[name] or {}, {
            bg = "NONE",
          })
        end
      end
      highlights.buffer_selected.fg = { highlight = "Normal", attribute = "fg" }
      highlights.buffer_selected.bold = true
      highlights.background.fg = { highlight = "Comment", attribute = "fg" }
      highlights.buffer_visible.fg = highlights.background.fg
      return highlights
    end
    opts.options.offsets = opts.options.offsets or {}
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
