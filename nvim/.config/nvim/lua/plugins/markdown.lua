local lint_config = vim.fn.stdpath("config") .. "/markdownlint-cli2.jsonc"

return {
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "prettier" } },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        ["markdownlint-cli2"] = {
          prepend_args = { "--config", lint_config },
        },
      },
    },
    keys = {
      {
        "<leader>cT",
        function()
          local buf = vim.api.nvim_get_current_buf()
          local has_toc = false
          for _, line in ipairs(vim.api.nvim_buf_get_lines(buf, 0, -1, false)) do
            if line:find("<!-- toc -->", 1, true) then
              has_toc = true
              break
            end
          end
          if not has_toc then
            local row = vim.api.nvim_win_get_cursor(0)[1]
            vim.api.nvim_buf_set_lines(buf, row, row, false, { "", "<!-- toc -->", "", "<!-- tocstop -->", "" })
          end
          require("conform").format({ bufnr = buf, formatters = { "markdown-toc" }, timeout_ms = 3000 })
        end,
        ft = "markdown",
        desc = "Insert / Update Markdown TOC",
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          prepend_args = { "--config", lint_config },
        },
      },
    },
  },
}
