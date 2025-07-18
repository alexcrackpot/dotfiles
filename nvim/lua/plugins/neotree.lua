return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        local neotree = require("neo-tree")
        vim.keymap.set('n', '<C-b>', ':Neotree toggle left<CR>', { noremap = true, silent = true })
        vim.keymap.set('n', 'o', ':Neotree float git_status')
        neotree.setup({
            filesystem = {
                follow_current_file = {
                    enabled = true,
                    leave_dirs_open = false,
                },
                filtered_items = {
                    visible = true,
                    show_hidden_count = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                },
				window = {
      				mappings = {
        				["<CR>"] = "open_tabnew", -- по Enter открываем во вкладке
        				["o"] = "open",           -- если хочешь оставить обычное открытие
        				["t"] = "open_tabnew",    -- альтернатива на t
      				}
            	}
			}
        })
    end
}
