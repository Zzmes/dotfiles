return {
  "mikavilpas/yazi.nvim",
  version = "*",
  submodules = false,
  cmd = "Yazi",
  keys = {
    {
      "<leader>-",
      "<cmd>Yazi<cr>",
      mode = { "n", "v" },
      desc = "Open Yazi",
    },
  },
  opts = {
    integrations = {
      grep_in_directory = "snacks.picker",
      grep_in_selected_files = "snacks.picker",
    },
  },
}
