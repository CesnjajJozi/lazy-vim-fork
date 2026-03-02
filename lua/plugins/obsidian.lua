return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/code/obsidian-vault/",
      },
    },
  },
  keys = {
    {
      "<leader>on",
      function()
        vim.api.nvim_command("ObsidianNew")
      end,
      desc = "[CUSTOM] [O]bsidian [N]ew Note",
    },
    {
      "<leader>ob",
      function()
        vim.api.nvim_command("ObsidianBacklinks")
      end,
      desc = "[CUSTOM] [O]bsidian [B]acklinks",
    },
    {
      "<leader>ol",
      function()
        vim.api.nvim_command("ObsidianLinks")
      end,
      desc = "[CUSTOM] [O]bsidian [L]inks",
    },
  },
}
