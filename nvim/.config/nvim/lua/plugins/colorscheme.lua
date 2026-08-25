return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_background = true,
      float = {
        transparent = true,
        solid = false,
      },
      -- Automatically apply Catppuccin's integration to every supported
      -- plugin managed by lazy.nvim, including plugins added in the future.
      auto_integrations = true,
      integrations = {
        gitsigns = {
          enabled = true,
          transparent = true,
        },
      },
      custom_highlights = function(colors)
        return {
          Normal = { bg = "none" },
          NormalNC = { bg = "none" },
          NormalFloat = { bg = "none" },
          FloatBorder = { fg = colors.surface1, bg = "none" },
          SignColumn = { bg = "none" },
          FoldColumn = { bg = "none" },
          EndOfBuffer = { bg = "none" },
          StatusLine = { bg = "none" },
          StatusLineNC = { bg = "none" },
          TabLine = { fg = colors.overlay0, bg = "none" },
          TabLineFill = { bg = "none" },
          TabLineSel = { fg = colors.text, bg = "none", bold = true },
          WinBar = { fg = colors.rosewater, bg = "none" },
          WinBarNC = { fg = colors.overlay1, bg = "none" },
          WinSeparator = { fg = colors.surface1, bg = "none" },

          -- Floating windows, completion menus, and Snacks Explorer.
          FloatTitle = { fg = colors.subtext0, bg = "none", bold = true },
          FloatFooter = { fg = colors.overlay1, bg = "none" },
          Pmenu = { fg = colors.overlay2, bg = "none" },
          SnacksNormal = { fg = colors.text, bg = "none" },
          SnacksNormalNC = { fg = colors.text, bg = "none" },
          SnacksPicker = { fg = colors.text, bg = "none" },
          SnacksPickerBox = { bg = "none" },
          SnacksPickerList = { bg = "none" },
          SnacksPickerInput = { fg = colors.text, bg = "none" },
          SnacksPickerPreview = { bg = "none" },
          SnacksPickerSelected = { fg = colors.text, bg = colors.surface0, bold = true },

          -- Side panels and Markdown rendering should share the terminal's
          -- transparent background instead of introducing opaque blocks.
          TroubleNormal = { fg = colors.text, bg = "none" },
          TroubleNormalNC = { fg = colors.text, bg = "none" },
          RenderMarkdownCode = { bg = "none" },
          RenderMarkdownCodeInline = { bg = "none" },
          RenderMarkdownH1Bg = { bg = "none" },
          RenderMarkdownH2Bg = { bg = "none" },
          RenderMarkdownH3Bg = { bg = "none" },
          RenderMarkdownH4Bg = { bg = "none" },
          RenderMarkdownH5Bg = { bg = "none" },
          RenderMarkdownH6Bg = { bg = "none" },
        }
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },
}
