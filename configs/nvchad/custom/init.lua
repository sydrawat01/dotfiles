local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
autocmd({"BufWritePre"}, {
  pattern = {"*.tf" ,"*.tfvars", "*.yml"},
  callback = function()
    vim.lsp.buf.format()
  end,
})
