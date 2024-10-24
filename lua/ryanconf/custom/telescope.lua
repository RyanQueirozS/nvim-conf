local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", builtin.find_files, {})
vim.keymap.set("n", "<leader>sg", builtin.live_grep, {})
vim.keymap.set("n", "<leader><leader>", builtin.buffers, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})

require("telescope").setup({
	defaults = {
		ripgrep_arguments = {
			"rg",
			"--hidden",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
		},
		file_ignore_patterns = { "deps/", "libs/" },
	},
})
