local M = {}


M.disabled = {
  n = {
      ["<C-c>"] = "",
  }
}

M.general = {
  n = {
    ["<C-e>"] = { "<cmd> Telescope oldfiles <CR>", "   find oldfiles" },
    ["<C-r>"] = {
      function()
        require("nvchad.ui.renamer").open()
      end,
      "   lsp rename",
    },
  },

  i = {
      ["<C-r>"] = {
         function()
            require("nvchad.ui.renamer").open()
         end,
         "   lsp rename",
      },
  }
}

return M
