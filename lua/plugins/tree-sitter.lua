return {
	'nvim-treesitter/nvim-treesitter',
	build = ":TSUpdate",
	config = function()
		local tree_config = require("nvim-treesitter.configs")
		tree_config.setup({
			ensure_installed = {"c", "make", "c_sharp", "lua", "vim", "vimdoc", "query", "javascript", "markdown", "markdown_inline" },
			highlight = { enable = true },
			indent = { enable = true }
		})
	end
}
