return {
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "ruff", "clang-format", "rust-analyzer" } },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_format" },
        toml = { "taplo" },
        c = { "clang_format" },
        cpp = { "clang_format" },
        cuda = { "clang_format" },
      },
    },
  },
}
