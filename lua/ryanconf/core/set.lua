local vim = vim

vim.opt.nu = true
vim.wo.relativenumber = true

vim.opt.tabstop =
    4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab =
    true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup =
    false
vim.opt.undodir =
    os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile =
    true

vim.opt.hlsearch = false
vim.opt.incsearch =
    true

vim.opt.termguicolors = true

vim.opt.scrolloff =
    10
vim.opt.signcolumn = "yes"
vim.opt.guicursor =
""
vim.opt
    .isfname:append("@-@")

vim.opt.updatetime =
    50

vim.opt.colorcolumn = "81"

-- Set these files as glsl files
vim.cmd [[
  autocmd BufRead,BufNewFile *.vert,*.frag,*.geom,*.tesc,*.tese,*.comp set filetype=glsl
]]

-- Set .h files as C files
vim.cmd [[
  autocmd BufRead,BufNewFile *.h set filetype=c
]]
