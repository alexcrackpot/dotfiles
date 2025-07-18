return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { silent = true })
	vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { silent = true })
	vim.keymap.set('n', '<C-w>', ':bdelete<CR>', { silent = true })
	require("bufferline").setup({
      options = {
        mode = "buffers", -- или "tabs"
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        diagnostics = "nvim_lsp",
        show_buffer_close_icons = true,
        show_close_icon = false,
        separator_style = "slant",
      }
    })
    -- Включаем отображение вкладок
    vim.opt.termguicolors = true
    vim.opt.showtabline = 2
  end
}
