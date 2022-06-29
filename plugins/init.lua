return {
  ["fatih/vim-go"] = {
    config = function()
      require "custom.plugins.cfg.vim-go"
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("custom.plugins.cfg.null-ls").setup()
    end,
  }
}
