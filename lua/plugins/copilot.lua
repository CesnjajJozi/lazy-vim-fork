return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        opts = {
          suggestion = {
            enabled = false, -- completely disable autocomplete
          },
          panel = {
            enabled = false, -- disable panel UI
          },
          nes = {
            enabled = false, -- disable next edit suggestions
          },
        },
      },
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    opts = {
      model = "gpt-4.1",
      -- model = "claude-sonnet-4.6",
      agent = "copilot",
      mappings = {
        accept_diff = {
          normal = "¢", -- <A-c>
          insert = "¢", -- <A-c>
        },
      },
    },
  },
}
