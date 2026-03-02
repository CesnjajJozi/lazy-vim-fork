return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    explorer = {},
    indent = {},
    picker = {
      sources = {
        explorer = {},
      },
      formatters = {
        file = {
          truncate = 100,
          filename_first = true,
        },
      },
      win = {
        input = {
          keys = {
            ["<c-u>"] = { "preview_scroll_up", mode = { "i", "n" } },
            ["<c-d>"] = { "preview_scroll_down", mode = { "i", "n" } },
          },
        },
      },
    },
    image = {
      convert = {
        notify = false,
      },
    },
    scope = {},
    notifier = {},
    lazygit = {},
  },
  keys = function(_, keys)
    return vim.list_extend(keys, {
      -- {
      --   "<leader>t",
      --   function()
      --     Snacks.explorer()
      --   end,
      --   desc = "File Explorer",
      -- },
      {
        "<leader>sn",
        function()
          Snacks.picker.files({ cwd = "~/.config/lazy-vim-fork" })
        end,
        desc = "[CUSTOM] Search Nvim Config",
      },
      {
        "<leader>gx",
        function()
          Snacks.picker.git_branches()
        end,
        desc = "[CUSTOM] Git Branches",
      },
      {
        "<leader>oo",
        function()
          Snacks.picker.files({ cwd = "~/code/obsidian-vault/" })
        end,
        desc = "[CUSTOM] Search Obsidian",
      },

      -- CUSTOM HYBRIS SEARCH
      {
        "<leader>oh",
        function()
          local choices = { "facades", "controllers", "populators", "services", "XMLs", "DAOs" }
          vim.ui.select(choices, {
            prompt = "Select a directory:",
            format_item = function(item)
              return item
            end,
          }, function(choice)
            if choice then
              local searches = {
                controllers = {
                  dir = "~/code/goHy2/core-customize/hybris/bin/custom/ggcommercewebservices/web/src/si/zenlab/v2/controller",
                  search = "value =.*",
                },
                facades = {
                  dir = "~/code/goHy2/core-customize/hybris/bin/custom/gorenje/ggfacades/src/si/zenlab/gg/facades/impl",
                  search = "public.*",
                },
                DAOs = {
                  dir = "~/code/goHy2/core-customize/hybris/bin/custom/gorenje/ggcore/src/si/zenlab/gg/core/daos/impl",
                  search = "public.*",
                },
                populators = {
                  dir = "~/code/goHy2/core-customize/hybris/bin/custom/gorenje/ggfacades/src/si/zenlab/gg/facades/populators",
                  search = "public class.*",
                },
                services = {
                  dir = "~/code/goHy2/core-customize/hybris/bin/custom/gorenje/ggcore/src/si/zenlab/gg/core/service/impl",
                  search = "public.*",
                },
                XMLs = {
                  dir = "~/code/goHy2/core-customize/hybris/bin/custom/gorenje/ggcore/resources/ggcore-items.xml",
                  search = "(type|attribute).*",
                },
              }
              Snacks.picker.grep({
                dirs = { searches[choice].dir },
                search = searches[choice].search,
              })
            end
          end)
        end,
        desc = "[CUSTOM] Search Sap Commerce",
      },
    })
  end,
}
