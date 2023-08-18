-- set colorscheme to nightfly with protected call
-- in case it ins't installed
local status, _ = pcall(vim.cmd, 'colorscheme nightfly')
if not status then
  print('Colorscheme not found!') -- print error if colorscheme is not installed
  return
end
