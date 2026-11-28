local M = { scale = 0.8 }

function M.geometry()
  local columns, lines = vim.o.columns, vim.o.lines
  local width = math.max(80, math.floor(columns * M.scale))
  local height = math.max(10, math.floor(lines * M.scale))
  return {
    relative = "editor",
    width = width,
    height = height,
    row = math.max(0, math.floor((lines - height) / 2)),
    col = math.max(0, math.floor((columns - width) / 2)),
  }
end

return M
