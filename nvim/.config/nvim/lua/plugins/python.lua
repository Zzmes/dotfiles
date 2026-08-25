return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Ruff handles linting and formatting. Pyright focuses on useful type
        -- errors, completion, navigation, and hover information.
        pyright = {
          settings = {
            python = {
              analysis = {
                diagnosticMode = "openFilesOnly",
                typeCheckingMode = "basic",
                diagnosticSeverityOverrides = {
                  -- Ruff already reports these; hiding the duplicates keeps
                  -- the diagnostics list concise.
                  reportDuplicateImport = "none",
                  reportUnusedImport = "none",
                  reportUnusedVariable = "none",
                  reportUnusedFunction = "none",
                  reportUnusedClass = "none",
                },
              },
            },
          },
        },
      },
    },
  },
}
