return {
    -- Theming nvim
    { "xiyaowong/transparent.nvim" },
    { 'norcalli/nvim-colorizer.lua' },
    {
        "blazkowolf/gruber-darker.nvim",
        priority = 1000,
        lazy = false,
        config = function()
            require("ryanconf.custom.colors")
        end,
    },

    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            require("ryanconf.custom.nvimtree")
        end,
    },
    { "nvim-tree/nvim-web-devicons" },
}
