return {
  "sphamba/smear-cursor.nvim",
  event = "VeryLazy",
  cond = function()
    return not vim.g.neovide
  end,
  opts = {
    -- Equal head/tail speeds keep the cursor rectangular, without a trail.
    stiffness = 0.8,
    trailing_stiffness = 0.8,
    stiffness_insert_mode = 0.8,
    trailing_stiffness_insert_mode = 0.8,
    damping = 0.95,
    damping_insert_mode = 0.95,
    matrix_pixel_threshold = 0.5,
    smear_between_buffers = false,
  },
}
