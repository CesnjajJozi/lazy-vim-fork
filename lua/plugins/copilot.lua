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
            enabled = false,
            auto_trigger = true,
            hide_during_completion = true,
            debounce = 75,
            trigger_on_accept = true,
            keymap = {
              accept = "ł", -- <A-l>
            },
          },
          panel = {
            enabled = false,
          },
        },
      },
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    opts = {
      model = "claude-sonnet-4.6",
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
