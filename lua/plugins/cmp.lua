return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-buffer",    -- Autocompletado basado en el buffer actual
        "hrsh7th/cmp-path",      -- Autocompletado para rutas de archivo
        "hrsh7th/cmp-nvim-lsp",  -- Integración con LSP
        "hrsh7th/cmp-cmdline",   -- Autocompletado en línea de comandos
        "hrsh7th/cmp-git",       -- Autocompletado para Git
        "L3MON4D3/LuaSnip",      -- Motor de snippets
        "saadparwaiz1/cmp_luasnip", -- Integración de LuaSnip con cmp
        "windwp/nvim-autopairs", -- Manejo automático de paréntesis
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")

        -- Configuración de nvim-cmp
        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body) -- Expande los snippets usando LuaSnip
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-b>"] = cmp.mapping.scroll_docs(-4), -- Scroll hacia arriba en documentación
                ["<C-f>"] = cmp.mapping.scroll_docs(4),  -- Scroll hacia abajo en documentación
                ["<C-Space>"] = cmp.mapping.complete(),  -- Forzar el autocompletado
                ["<C-e>"] = cmp.mapping.abort(),         -- Cancelar el menú
                ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirmar selección con Enter
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" }, -- Autocompletado basado en LSP
                { name = "luasnip" },  -- Snippets
            }, {
                { name = "buffer" },   -- Autocompletado basado en buffer
                { name = "path" },     -- Autocompletado para rutas
            }),
        })

        -- Configuración para cmdline (línea de comandos)
        cmp.setup.cmdline("/", {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = "buffer" },
            },
        })

        cmp.setup.cmdline(":", {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({
                { name = "path" },
            }, {
                { name = "cmdline" },
            }),
        })

        -- Integrar nvim-autopairs con cmp
        local autopairs = require("nvim-autopairs.completion.cmp")
        cmp.event:on("confirm_done", autopairs.on_confirm_done())
    end,
}

