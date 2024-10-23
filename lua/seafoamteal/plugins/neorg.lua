return {
    "nvim-neorg/neorg",
    lazy = false,
    version = "*",
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {},
          ["core.dirman"] = {
            config = {
              workspaces = {
                life = "~/neorg/life",
                dev = "~/neorg/dev",
                uni = "~/neorg/uni"
              },
              default_workspace = "uni",
            },
          },
          ["core.completion"] = {
            config = {
              engine = "nvim-cmp",
            },
          },
          ["core.integrations.nvim-cmp"] = {},
        }
      })

      vim.wo.foldlevel = 99
      vim.wo.conceallevel = 2
    end
}
