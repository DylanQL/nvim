return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "VeryLazy",
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = { -- Idiomas que queremos instalar
		"lua",
		"luadoc",
		"python",    -- Soporte para Python
		"go",        -- Soporte para Go
		"rust",      -- Soporte para Rust
		"c_sharp",   -- Soporte para C#
		"html",      -- Soporte para HTML
		"css",       -- Soporte para CSS
		"json",      -- Soporte para JSON
		"c",         -- Soporte para C
		"cpp",       -- Soporte para C++
		"java",      -- Soporte para Java
		"kotlin",    -- Soporte para Kotlin
        },
        highlight = { -- Resaltado de sintaxis basado en Treesitter
            enable = true, -- Habilita el resaltado de sintaxis
        },
        indent = { -- Indentación inteligente
            enable = true, -- Habilita la indentación basada en Treesitter
        },
    },
}

