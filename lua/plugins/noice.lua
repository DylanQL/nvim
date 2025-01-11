return {
    {
        "folke/noice.nvim",
        event = "VeryLazy", -- Carga el plugin de forma diferida
        dependencies = {
            "MunifTanjim/nui.nvim", -- Dependencia requerida para interfaces visuales
            "rcarriga/nvim-notify", -- Opcional: Mejora las notificaciones
            "hrsh7th/nvim-cmp",     -- Opcional: Autocompletado para cmdline
        },
        config = function()
            require("noice").setup({
                cmdline = {
                    enable = true, -- Habilitar línea de comandos mejorada
                    format = {
                        cmdline = { pattern = "^:", icon = "", lang = "vim" },
                        search_down = { pattern = "^/", icon = "🔍 ", lang = "regex" },
                        search_up = { pattern = "^%?", icon = "🔍 ", lang = "regex" },
                        filter = { pattern = "^:%s*!%s*", icon = "$", lang = "bash" },
                    },
                },
                popupmenu = {
                    enable = true, -- Habilitar menú emergente para autocompletado
                },
                messages = {
                    enable = true, -- Mejorar los mensajes de Neovim
                },
                lsp = {
                    progress = { enabled = true }, -- Mostrar progreso de LSP
                    hover = { enabled = true },    -- Mejorar ventana de hover
                    signature = { enabled = true }, -- Mostrar firma de funciones
                },
                presets = {
                    bottom_search = true, -- Mover la barra de búsqueda al fondo
                    command_palette = true, -- Usar paleta de comandos como estilo
                    long_message_to_split = true, -- Dividir mensajes largos
                },
            })
        end,
    },
}

