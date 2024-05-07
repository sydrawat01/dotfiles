return {

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "json",
        "lua",
        -- "markdown",
        -- "markdown_inline",
        "python",
        "query",
        "regex",
        "vim",
        "toml",
        "yaml",
        "go",
        -- "bicep",
        "hcl",
        "terraform",
        "c_sharp",
      },
      -- Disable terraform treesitter on fixture files
      highlight = {
        disable = function(lang)
          local buf_name = vim.fn.expand("%")
          if lang == "terraform" and string.find(buf_name, "fixture") then
            return true
          end
        end,
      },
    },
  },
}

