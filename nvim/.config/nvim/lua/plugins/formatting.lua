return {
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "ruff", "clang-format" } },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_format" },
        c = { "clang_format" },
        cpp = { "clang_format" },
        cuda = { "clang_format" },
      },
    },
  },
}
