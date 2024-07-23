local function my_on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)
end
-- pass to setup along with your other options
require("nvim-tree").setup({
	---
	view = {
		side = "right",
		width = 30,
	},
	git = { enable = true, ignore = true, timeout = 500 },
	actions = { open_file = { quit_on_open = true } },
	filters = { dotfiles = false, custom = { "^.DS_Store$", "^\\.git$" } },
	on_attach = my_on_attach,
	---
})
