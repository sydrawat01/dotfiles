local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css", "yaml", "json" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- shell
  b.formatting.shfmt,

  -- terraform
  b.formatting.terraform_fmt,

  -- cpp
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
