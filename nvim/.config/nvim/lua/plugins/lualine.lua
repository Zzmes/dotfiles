local function color_block(component, accent, separator)
  local original_color = component.color
  component.color = function(context)
    local color = original_color
    if type(color) == "function" then
      color = color(context)
    end
    if type(color) == "string" then
      color = { fg = Snacks.util.color(color) }
    end
    local background = Snacks.util.color("Normal", "bg") or (vim.o.background == "light" and "#e6e9ef" or "#303446")
    local foreground = Snacks.util.color(accent) or Snacks.util.color("Normal") or background
    return vim.tbl_extend("force", color or {}, { bg = Snacks.util.blend(foreground, background, 0.16) })
  end
  component.separator = separator
  return component
end

return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    local center = opts.sections.lualine_c
    local modified = {
      function()
        return "●"
      end,
      cond = function()
        return vim.bo.buftype == "" and vim.bo.modified
      end,
      color = function()
        return { fg = Snacks.util.color("DiagnosticWarn") }
      end,
    }
    table.insert(center, modified)

    local left_arrow = { right = "" }
    color_block(center[1], "Directory", left_arrow)
    color_block(center[2], "DiagnosticError", left_arrow)
    color_block(center[3], "Function", "")
    color_block(center[4], "Function", left_arrow)
    color_block(modified, "DiagnosticWarn", left_arrow)

    local right_arrow = { left = "" }
    local right = opts.sections.lualine_x
    for _, component in ipairs(right) do
      local accent = component[1] == "diff" and "DiagnosticWarn" or "Statement"
      color_block(component, accent, right_arrow)
    end
  end,
}
