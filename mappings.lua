local M = {}


M.disabled = {
  n = {
      ["<C-c>"] = "",
  }
}

M.general = {
  n = {
    ["<C-e>"] = { "<cmd> Telescope oldfiles <CR>", "   find oldfiles" },
    ["<Leader>rn"] = {
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

M.telescope = {
  n = {
    ["<C-d>"] = { "<cmd> Telescope changed_files <CR>", "telescope changed file" },
  }
}
return M
