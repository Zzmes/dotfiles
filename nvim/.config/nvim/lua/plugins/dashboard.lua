-- Pikachu character art supplied by the user.
local header = {
  "          ▀████▀▄▄              ▄█ ",
  "            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ",
  "    ▄        █          ▀▀▀▀▄  ▄▀  ",
  "   ▄▀ ▀▄      ▀▄              ▀▄▀  ",
  "  ▄▀    █     █▀   ▄█▀▄      ▄█    ",
  "  ▀▄     ▀▄  █     ▀██▀     ██▄█   ",
  "   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ",
  "    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ",
  "   █   █  █      ▄▄           ▄▀   ",
}
-- Equal display widths preserve the supplied art when centering each row.
local header_width = 0
for _, line in ipairs(header) do
  header_width = math.max(header_width, vim.fn.strdisplaywidth(line))
end
for i, line in ipairs(header) do
  header[i] = line .. (" "):rep(header_width - vim.fn.strdisplaywidth(line))
end

local function set_highlights()
  vim.api.nvim_set_hl(0, "PikachuHeader", { fg = "#e5c890" })
  for group, color in pairs({
    NeovimDateWeekday = "#ff9acb", NeovimDateMonth = "#ffd166", NeovimDateNumber = "#67e8d1",
  }) do
    vim.api.nvim_set_hl(0, group, { fg = color, bold = true })
  end
end

local function blank(width)
  return { { (" "):rep(width) } }
end

-- Wrap by display cells (Chinese characters occupy two), preserving highlights.
local function wrap_runs(runs, width)
  local rows, pending, cells = {}, {}, 0
  local function emit(count)
    local row = {}
    for i = 1, count do
      local char = pending[i]
      if row[#row] and row[#row].hl == char.hl then
        row[#row][1] = row[#row][1] .. char[1]
      else
        row[#row + 1] = { char[1], hl = char.hl }
      end
    end
    rows[#rows + 1] = { text = row, align = "center" }
    local rest = {}
    for i = count + 1, #pending do rest[#rest + 1] = pending[i] end
    while rest[1] and rest[1][1] == " " do table.remove(rest, 1) end
    pending, cells = rest, 0
    for _, char in ipairs(pending) do cells = cells + vim.fn.strdisplaywidth(char[1]) end
  end
  for _, run in ipairs(runs) do
    for _, char in ipairs(vim.fn.split(run[1], "\\zs")) do
      local size = vim.fn.strdisplaywidth(char)
      if cells + size > width then
        local split = #pending
        for i = #pending, 2, -1 do
          if pending[i][1] == " " then split = i - 1; break end
        end
        emit(split)
      end
      if #pending > 0 or char ~= " " then
        pending[#pending + 1] = { char, hl = run.hl }
        cells = cells + size
      end
    end
  end
  if #pending > 0 then emit(#pending) end
  return rows
end

return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    set_highlights()
    vim.api.nvim_create_autocmd("ColorScheme", {
      group = vim.api.nvim_create_augroup("NeovimDashboardColors", { clear = true }),
      callback = set_highlights,
    })
    opts.dashboard = opts.dashboard or {}
    opts.dashboard.enabled = true
    opts.dashboard.width = 60
    opts.dashboard.sections = function(self)
      local available = vim.api.nvim_win_get_width(self.win)
      local height = vim.api.nvim_win_get_height(self.win)
      self.opts.width = math.min(60, available)
      local count = 0
      for _, item in ipairs(self:resolve({ section = "keys" })) do
        if not item.hidden then count = count + 1 end
      end
      local startup = Snacks.dashboard.sections.startup({ icon = "" })
      local footer_rows = wrap_runs(startup.text, self.opts.width)
      local overhead = #footer_rows + 4
      local logo = available >= header_width and height >= #header + count + overhead
        and header or { "P I K A C H U" }
      local menu_gap = height >= #logo + count * 2 - 1 + overhead and 1 or 0
      local roomy = height >= #logo + count + overhead
      local result = {}
      for _, line in ipairs(logo) do
        result[#result + 1] = { text = { { line, hl = "PikachuHeader" } }, align = "center" }
      end
      local date = {
        { os.date("%A") .. ", ", hl = "NeovimDateWeekday" },
        { os.date("%B") .. " ", hl = "NeovimDateMonth" },
        { os.date("%d, %Y"), hl = "NeovimDateNumber" },
      }
      if vim.fn.strdisplaywidth(os.date("%A, %B %d, %Y")) > self.opts.width then
        date = {
          { os.date("%Y") .. "-", hl = "NeovimDateNumber" },
          { os.date("%m"), hl = "NeovimDateMonth" },
          { "-" .. os.date("%d"), hl = "NeovimDateNumber" },
        }
      end
      result[#result + 1] = { text = blank(self.opts.width) }
      result[#result + 1] = { text = date, align = "center" }
      if roomy then result[#result + 1] = { text = blank(self.opts.width) } end
      -- Keep LazyVim's original width, icons, shortcuts, Projects and all extras.
      result[#result + 1] = { section = "keys", gap = menu_gap }
      if roomy then result[#result + 1] = { text = blank(self.opts.width) } end
      -- Use the plugin's original wording, precision and footer/special colors.
      if #footer_rows == 1 then
        result[#result + 1] = { section = "startup", icon = "" }
      else
        vim.list_extend(result, footer_rows)
      end
      return result
    end
  end,
}
