return {
  "hat0uma/csvview.nvim",
  ft = { "csv", "tsv" },
  cmd = { "CsvViewEnable", "CsvViewDisable", "CsvViewToggle", "CsvViewInfo" },
  keys = {
    { "<leader>cv", "<cmd>CsvViewToggle<cr>", ft = { "csv", "tsv" }, desc = "Toggle CSV Table" },
  },
  opts = {
    view = { display_mode = "border" },
    keymaps = {
      jump_next_field_end = { "<Tab>", mode = { "n", "v" } },
      jump_prev_field_end = { "<S-Tab>", mode = { "n", "v" } },
    },
  },
  config = function(_, opts)
    local csvview = require("csvview")
    csvview.setup(opts)
    local function enable(buf)
      if not csvview.is_enabled(buf) then
        csvview.enable(buf)
      end
    end
    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("csvview_auto_enable", { clear = true }),
      pattern = { "csv", "tsv" },
      callback = function(event)
        enable(event.buf)
      end,
    })
    if vim.bo.filetype == "csv" or vim.bo.filetype == "tsv" then
      enable(vim.api.nvim_get_current_buf())
    end
  end,
}
