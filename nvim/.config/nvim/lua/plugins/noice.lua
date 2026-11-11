return {
  "folke/noice.nvim",
  opts = {
    status = {
      command = {
        event = "msg_showcmd",
        ["not"] = { find = "^%s*<20>%s*$" },
      },
    },
    lsp = {
      hover = {
        opts = {
          border = { style = "rounded" },
          position = { row = 2 },
        },
      },
    },
  },
}
