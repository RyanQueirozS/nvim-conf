return {
    -- Everything in here is in regars to coding and/or note taking

    -- Cool to have
    {
        "ThePrimeagen/harpoon",
        config = function(_, _)
            require("ryanconf.custom.harpoon")
        end,
    },
    { "nvim-pack/nvim-spectre" },
    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup()
        end,
    },
    {
        "m4xshen/autoclose.nvim",
        config = true,
    },
    {
        "numToStr/Comment.nvim",
        config = function(_, _)
            require("ryanconf.custom.comment")
        end,
    },
    {
        "ggandor/leap.nvim",
        config = function(_, _)
            require("leap").add_default_mappings()
        end,
    },
    { "mbbill/undotree" },
    { "christoomey/vim-tmux-navigator" },
    { "RaafatTurki/hex.nvim" },

    -- Notes
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },
    { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
    { "vimwiki/vimwiki" },
}
