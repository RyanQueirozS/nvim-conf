local configs = require("nvim-treesitter.configs")

local cmp = require("cmp")

cmp.setup({
    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
    },
    mapping = cmp.mapping.preset.insert({
        -- Enter key confirms completion item
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
    snippet = {
        expand = function(args)
            local luasnip = require("luasnip")
            if not luasnip then
                return
            end
            luasnip.lsp_expand(args.body)
        end,
    },
})

configs.setup({
    ensure_installed = {
        "bash",
        "c",
        "cpp",
        "go",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "rust",
        "glsl",
    },
    sync_install = false,
    ignore_install = { "" },
    highlight = {
        enable = true,
        disable = { "" },
        additional_vim_regex_highlighting = false,
    },
})
