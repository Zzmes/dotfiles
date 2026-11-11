return {
  "Bekaboo/dropbar.nvim",
  lazy = false,
  keys = {
    {
      "<leader>;",
      function()
        require("dropbar.api").pick()
      end,
      desc = "Pick Breadcrumb",
    },
  },
}
