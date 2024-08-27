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
    "github/copilot.vim",
    lazy = false,
    config = function()
      vim.keymap.set("i", "<C-m>", "copilot#Accept()", {
        expr = true,
        replace_keycodes = false,
      })
      vim.g.copilot_no_tab_map = true
    end,
  }, -- copilot
}

return plugins
