vim.pack.add({
	{ src = "https://github.com/echasnovski/mini.nvim", name = "mini" }
})

require("mini.pairs").setup()

require("mini.cursorword").setup()

require("mini.trailspace").setup()

require("mini.indentscope").setup({
	symbol = "│",
	draw = {
		delay = 10,
		animation = require("mini.indentscope").gen_animation.linear({
			duration = 15,
			unit = "step",
			easing = "out",
		}),
	}
})
