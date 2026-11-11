return {
  "folke/which-key.nvim",
  opts = {
    spec = {
      { "<leader>;", icon = { icon = "󰙅", color = "cyan" } },
      { "<leader>K", desc = "Keyword Help", icon = { icon = "", color = "cyan" } },
      { "<leader>-", desc = "Open Yazi", icon = { icon = "", color = "yellow" }, mode = { "n", "x" } },
      { "<leader>a", group = "AI", icon = { icon = "󰚩", color = "purple" }, mode = { "n", "x" } },
    },
    icons = {
      rules = {
        { pattern = "overseer", icon = "", color = "green" },
      },
    },
  },
}
