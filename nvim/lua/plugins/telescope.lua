return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
            enabled = true
        }, {"nvim-telescope/telescope-file-browser.nvim", enabled = true}
    },
    branch = "0.1.x",
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '-', ":Telescope file_browser")
        vim.keymap.set('n', 'ff', builtin.find_files, {})
        --vim.keymap.set('n', 'fw', builtin.live_grep, {})
        vim.keymap.set('n', 'fw', function()
  			require('telescope.builtin').live_grep({
    			additional_args = function()
      				return {
        			"--fixed-strings",
        			"--hidden",
        			"--no-ignore"
      				}
    			end
  				})
		end, { desc = "Поиск по содержимому (точный)" })
		vim.keymap.set('n', 'fb', builtin.buffers, {})
        vim.keymap.set('n', 'fh', builtin.help_tags, {})
        vim.keymap.set('n', 'gb', builtin.git_branches, {})
        vim.keymap.set('n', 'gc', builtin.git_commits, {})
        vim.keymap.set('n', 'gs', builtin.git_status, {})
        vim.keymap.set('n', 'ls', builtin.lsp_document_symbols, {})
        vim.keymap.set('n', 'fx', builtin.treesitter, {})
        vim.keymap.set('n', 'fs', builtin.spell_suggest, {})
        vim.keymap.set('n', 'gd', builtin.lsp_definitions, {noremap = true, silent = true})
    end
}
