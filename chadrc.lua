-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.mappings = require("custom.mappings")

M.ui = {
  theme = "gruvchad",
}

M.options = {
  user = function ()
    require("custom.opts")
  end
}

M.plugins = {
  user = require("custom.plugins"),
  override = {
    -- ["kyazdani42/nvim-tree.lua"] = {
    --   view = {
    --     side = "right",
    --     width = 25,
    --     hide_root_folder = true,
    --   },
    -- }

   ["hrsh7th/nvim-cmp"] = function()
     return require "custom.plugins.cfg.cmp"
   end
  },

  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.cfg.lspconfig",
    },
  },
}

return M
