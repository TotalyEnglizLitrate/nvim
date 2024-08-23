local plugins = {
  { "andweeb/presence.nvim", lazy = false }, -- Discord RPC
  {
    "saecki/crates.nvim",
    tag = "stable",
    event = { "BufRead Cargo.toml" },
    config = function()
      require("crates").setup()
    end,
  }, -- Cargo.toml
  { "pocco81/autosave.nvim", lazy = false }, --  AutoSave
  { "lambdalisue/vim-suda", lazy = false }, -- sudo
  {
    "stevearc/overseer.nvim",
    config = function()
      require("overseer").setup {
        templates = { "builtin", "user.run_script" },
      }
    end,
  },
}

return plugins
