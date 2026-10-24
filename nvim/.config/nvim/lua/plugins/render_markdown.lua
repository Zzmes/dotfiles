return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.icons" },
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    code = {
      -- Keep language labels and icons, but let Ghostty provide the code
      -- block background instead of drawing an opaque rectangle.
      disable_background = true,
      highlight_inline = "RenderMarkdownCodeInfo",
    },
    heading = {
      -- Preserve Catppuccin heading colors without painting the full line.
      backgrounds = {
        "RenderMarkdownH1",
        "RenderMarkdownH2",
        "RenderMarkdownH3",
        "RenderMarkdownH4",
        "RenderMarkdownH5",
        "RenderMarkdownH6",
      },
    },
  },
}
