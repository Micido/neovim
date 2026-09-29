vim.pack.add({
	{ src = "https://github.com/nvim-telescope/telescope.nvim", name = "telescope" },
	{ src = "https://github.com/nvim-lua/plenary.nvim", name = "plenary" },
	{ src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim", name = "telescope-fzf" },
	{ src = "https://github.com/nvim-telescope/telescope-symbols.nvim", name = "telescope-symbols" },
	{ src = "https://github.com/nvim-telescope/telescope-ui-select.nvim", name = "telescope-ui-select" },
	{ src = "https://github.com/2kabhishek/nerdy.nvim", name = "telescope-nerdy" }
})

require("telescope").setup({
	defaults = {
		file_ignore_patterns = { ".git/", ".venv", ".node_modules", "node_modules", ".vscode" }
	},
})

require("telescope").load_extension("nerdy")
require("telescope").load_extension("ui-select")
require("telescope").load_extension("notify")
