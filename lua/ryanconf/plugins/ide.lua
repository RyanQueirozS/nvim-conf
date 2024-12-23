return {
    -- Everything in here is to make nvim into a full on IDE

    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "neovim/nvim-lspconfig" },
    { "saadparwaiz1/cmp_luasnip" },
    { "L3MON4D3/LuaSnip" },
    { "williamboman/mason.nvim", config = true },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("ryanconf.custom.lspconfig")
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("ryanconf.custom.treesitter")
        end,
    },
    { "nvim-treesitter/playground" },
    {
        "stevearc/conform.nvim",
        config = function()
            require("ryanconf.custom.conform")
        end,
    },

    -- git
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim", -- required
            "nvim-telescope/telescope.nvim", -- optional
            "sindrets/diffview.nvim", -- optional
            "ibhagwan/fzf-lua",     -- optional
        },
        config = true,
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({
                current_line_blame = true,
            })
        end,
    },
    { "akinsho/git-conflict.nvim", version = "*", config = true },
    { "tpope/vim-fugitive" },
    {
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            vim.keymap.set("n", "<leader>gs", "<cmd> LazyGit <CR>")
        end,
    },

    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.4",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function(_, _)
            require("ryanconf.custom.telescope")
        end,
    },

    {
        "voldikss/vim-floaterm",
    },
}
