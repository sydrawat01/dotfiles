local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "hcl",
    "terraform",
    "json",
    "dockerfile",
    "bash",
    "toml",
    "yaml",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "prettier",
    "json-lsp",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- shell
    "bash-language-server",
    "shfmt",
    "shellcheck",

    -- terraform
    "terraform-ls",
    "tflint",

    -- ansible
    "ansible-lint",
    "ansible-language-server",

    -- docker
    "dockerfile-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
    -- ignore = false,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
