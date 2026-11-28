local terminal_float = require("config.terminal_float")

local function select_ai_cli()
  require("sidekick.cli").select({ filter = { installed = true } })
end

local function toggle_ai_cli()
  local latest
  for _, terminal in pairs(require("sidekick.cli.terminal").sessions()) do
    if terminal:is_running() and (not latest or terminal.atime > latest.atime) then
      latest = terminal
    end
  end

  if latest then
    require("sidekick.cli").toggle({ filter = { session = latest.id } })
  else
    select_ai_cli()
  end
end

return {
  "folke/sidekick.nvim",
  opts = {
    nes = { enabled = false },
    cli = {
      win = {
        layout = "float",
        float = { width = terminal_float.scale, height = terminal_float.scale, border = "rounded" },
        config = function(terminal)
          local name = terminal.tool.name
          local labels = { claude = "Claude Code", opencode = "OpenCode", amazon_q = "Amazon Q" }
          terminal.opts.float.title = " " .. (labels[name] or name:gsub("^%l", string.upper)) .. " "
          vim.api.nvim_create_autocmd("VimResized", {
            group = terminal.group,
            callback = function()
              if terminal:is_open() then
                vim.api.nvim_win_set_config(terminal.win, terminal_float.geometry())
              end
            end,
          })
        end,
      },
    },
  },
  keys = {
    { "<leader>as", select_ai_cli, desc = "Select AI CLI" },
    { "<A-a>", select_ai_cli, desc = "Select AI CLI" },
    { "<C-.>", toggle_ai_cli, mode = { "n", "t" }, desc = "Toggle AI CLI" },
    {
      "<leader>af",
      function()
        require("sidekick.cli").send({ msg = "{file}" })
      end,
      desc = "Send Current File to AI",
    },
    {
      "<leader>av",
      function()
        require("sidekick.cli").send({ msg = "{selection}" })
      end,
      mode = "x",
      desc = "Send Selected Code to AI",
    },
  },
}
