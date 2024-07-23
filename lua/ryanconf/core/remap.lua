vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", "<cmd> NvimTreeFindFileToggle<CR>") -- replaced with nvim tree
vim.keymap.set("n", "<leader>pc", "<cmd> NvimTreeCollapse<CR>") -- replaced with nvim tree
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("x", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "[d", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "]d", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Tmux
vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>")
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>")

--Random stuff
vim.keymap.set("n", "<leader>gr", function()
	vim.lsp.buf.references()
end, opts)
vim.keymap.set("n", "<leader>rn", function()
	vim.lsp.buf.rename()
end, opts)

--UndoTree
vim.keymap.set("n", "<leader>ud", "<cmd> UndotreeToggle <CR>")

-- mistakes
vim.cmd([[command! -nargs=0 W :write]])
