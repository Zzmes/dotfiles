return {
  {
    "iamcco/markdown-preview.nvim",
    init = function()
      if vim.env.SSH_CONNECTION or vim.env.SSH_TTY then
        vim.g.mkdp_port = "8765"
        vim.g.mkdp_open_to_the_world = 0
        vim.g.mkdp_open_ip = "127.0.0.1"
        vim.g.mkdp_browserfunc = "mkdp#util#echo_url"
      end
    end,
  },
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "prettier" } },
  },
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.markdown = { "prettier", "markdown-toc" }
      opts.formatters_by_ft["markdown.mdx"] = { "prettier", "markdown-toc" }
    end,
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
    opts = function(_, opts)
      opts.linters_by_ft = opts.linters_by_ft or {}
      opts.linters_by_ft.markdown = {}
      opts.linters_by_ft["markdown.mdx"] = {}
    end,
  },
}
