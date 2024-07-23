return {
    -- Theming nvim
    {
        "dasupradyumna/midnight.nvim",
        lazy = false,
        priority = 1000,
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
