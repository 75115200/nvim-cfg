local present, cmp = pcall(require, "cmp")

if not present then
  print("cmp not exist")
   return {}
end


local options = {
  mapping = {
    ["<Up>"] = cmp.mapping.select_prev_item(),
    ["<Down>"] = cmp.mapping.select_next_item()
  }
}

print("init custom")

return options
