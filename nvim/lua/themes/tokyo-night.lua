return {
  "folke/tokyonight.nvim",
  lazy = false, -- загружать сразу при запуске
  priority = 1000, -- применить тему до других плагинов
  opts = {},
  config = function()
    vim.cmd("colorscheme tokyonight-storm") -- можно заменить на "tokyonight-night", "tokyonight-storm", и т.д.
  end
}
