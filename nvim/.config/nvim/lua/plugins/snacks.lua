local terminal_float = require("config.terminal_float")

local indent_colors = {
  "SnacksIndent1",
  "SnacksIndent2",
  "SnacksIndent3",
  "SnacksIndent4",
  "SnacksIndent5",
  "SnacksIndent6",
}

return {
  "folke/snacks.nvim",
  opts = {
    scroll = {
      animate = { duration = { step = 15, total = 280 } },
      animate_repeat = { duration = { step = 10, total = 120 } },
    },
    picker = {
      sources = {
        explorer = {
          ignored = true,
          toggles = { ignored = false },
          on_show = function(picker)
            local layout = picker.layout
            local update_titles = layout.opts.on_update_pre
            layout.opts.on_update_pre = function(current)
              update_titles(current)
              local row, col = unpack(vim.api.nvim_win_get_position(current.root.win))
              local input, list = current.wins.input, current.wins.list
              if not current.split or current.opts.fullscreen or row ~= 1 or not input.enabled or not list.enabled then
                return
              end

              -- Use the tabline space already reserved for this sidebar.
              input.opts.relative = "editor"
              input.opts.win = nil
              input.opts.row = 0
              input.opts.col = col + input.opts.col
              list.opts.row = list.opts.row - 1
              list.opts.height = list.opts.height + 1
              list.opts.max_height = list.opts.max_height + 1
            end
            layout:update()
          end,
        },
        files = { ignored = true },
      },
    },
    indent = {
      indent = { enabled = true, hl = "SnacksIndent" },
      scope = { enabled = true, only_current = true, hl = indent_colors },
      chunk = {
        enabled = true,
        only_current = true,
        hl = indent_colors,
        char = { corner_top = "╭", corner_bottom = "╰" },
      },
    },
    terminal = {
      win = {
        position = "float",
        style = "terminal",
        border = "rounded",
        title = "  Terminal ",
        title_pos = "center",
        -- Sidekick centers the content area and draws the border around it.
        width = function()
          return terminal_float.geometry().width
        end,
        height = function()
          return terminal_float.geometry().height
        end,
        row = function()
          return terminal_float.geometry().row
        end,
        col = function()
          return terminal_float.geometry().col
        end,
      },
    },
  },
}
