local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt

-- relative line numbers
opt.relativenumber = true

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
autocmd({"BufWritePre"}, {
  pattern = {"*.tf" ,"*.tfvars", "*.yml", "*.yaml", "*.go"},
  callback = function()
    vim.lsp.buf.format()
  end,
})
