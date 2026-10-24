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
    indent = {
      indent = { enabled = false },
      scope = { enabled = true, only_current = true, hl = indent_colors },
      chunk = { enabled = false },
    },
    terminal = {
      win = {
        position = "float",
        style = "terminal",
        border = "rounded",
        title = "  Terminal ",
        title_pos = "center",
        width = 0.8,
        height = 0.8,
      },
    },
  },
}
