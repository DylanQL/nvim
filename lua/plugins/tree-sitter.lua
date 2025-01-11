return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "VeryLazy",
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = { -- Idiomas que queremos instalar
            "lua",
            "luadoc",
        },
        highlight = { -- Resaltado de sintaxis basado en Treesitter
            enable = true, -- Habilita el resaltado de sintaxis
        },
        indent = { -- Indentación inteligente
            enable = true, -- Habilita la indentación basada en Treesitter
        },
    },
}

