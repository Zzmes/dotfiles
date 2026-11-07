return {
  "folke/sidekick.nvim",
  opts = {
    nes = { enabled = false },
    cli = {
      win = {
        split = { width = 0.38 },
      },
    },
  },
  keys = {
    {
      "<leader>as",
      function()
        require("sidekick.cli").select({ filter = { installed = true } })
      end,
      desc = "Select AI CLI",
    },
    {
      "<leader>af",
      function()
        require("sidekick.cli").send({ msg = "{file}" })
      end,
      desc = "Send Current File to AI",
    },
    {
      "<leader>av",
      function()
        require("sidekick.cli").send({ msg = "{selection}" })
      end,
      mode = "x",
      desc = "Send Selected Code to AI",
    },
  },
}
