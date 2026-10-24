return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          -- Pyright's pull-diagnostic path still emits unused-code hints in
          -- this version. Push diagnostics honor disableTaggedHints.
          capabilities = {
            textDocument = {
              diagnostic = { dynamicRegistration = false },
            },
          },
          settings = {
            pyright = {
              -- Let Ruff provide the organize-imports action.
              disableOrganizeImports = true,
              -- Avoid gray unused-code hints duplicating Ruff diagnostics.
              disableTaggedHints = true,
            },
            python = {
              analysis = {
                typeCheckingMode = "basic",
                diagnosticSeverityOverrides = {
                  -- Ruff owns unused-import/variable and duplicate-import lint.
                  reportDuplicateImport = "none",
                  reportUnusedImport = "none",
                  reportUnusedVariable = "none",
                  -- Preserve the existing preference for these extra warnings.
                  reportUnusedFunction = "none",
                  reportUnusedClass = "none",
                },
              },
            },
          },
        },
        ruff = {
          init_options = {
            settings = {
              -- Pyright owns syntax and name-resolution diagnostics, keeping
              -- its control-flow analysis and type errors available.
              showSyntaxErrors = false,
              lint = {
                ignore = { "F821", "F822", "F823" },
              },
            },
          },
        },
      },
    },
  },
}
