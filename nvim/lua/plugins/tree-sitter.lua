return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    ensure_installed = {
      "lua", "php", "go", "json", "yaml", "bash", "markdown"
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end
}
