local function keymap(mode, key, bind, opt)
	local options = { noremap = true, silent = true }
	if opt then
		options = vim.tbl_expend("force", options, opt)
	end
	vim.keymap.set(mode, key, bind, options)
end

local builtin = require("telescope.builtin")

keymap("n", "<leader>ff", function()
	builtin.find_files({ hidden = true })
end)
