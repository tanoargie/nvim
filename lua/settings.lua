local settings = {
  autoread = true,
  number = true,
  relativenumber = true,
  hidden = true,
  clipboard = "unnamedplus",
  autoindent = true,
  smartindent = true,
  expandtab = true,
  tabstop = 2,
  shiftwidth = 2
}

for k, v in pairs(settings) do
  vim.o[k] = v
end
