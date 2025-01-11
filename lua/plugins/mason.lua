return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim", -- Gestor de instalaciones para LSP
        "williamboman/mason-lspconfig.nvim", -- Integración con LSPConfig
        "folke/neodev.nvim", -- Mejora para el desarrollo en Lua
    },
    config = function()
        -- Configurar Mason
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { -- Lenguajes que deseas instalar automáticamente
                "lua_ls",       -- Soporte para Lua
                "pyright",      -- Soporte para Python
                "gopls",        -- Soporte para Go
                "rust_analyzer", -- Soporte para Rust
		"omnisharp",    -- Soporte para C#
                "html",       -- Soporte para HTML
                "cssls",      -- Soporte para CSS
                "jsonls",     -- Soporte para JSON
                -- "bashls",     -- Soporte para Bash
                -- "yamlls",     -- Soporte para YAML
                -- "dockerls",   -- Soporte para Dockerfiles
                "clangd",     -- Soporte para C/C++
                "jdtls",      -- Soporte para Java
                -- "kotlin_language_server", -- Soporte para Kotlin
                -- "phpactor",   -- Soporte para PHP
                -- "svelte",     -- Soporte para Svelte
                -- "vuels",      -- Soporte para Vue.js
            },
        })

        -- Configuración básica para todos los servidores
        local lspconfig = require("lspconfig")
        require("mason-lspconfig").setup_handlers({
            function(server_name)
                lspconfig[server_name].setup({})
            end,
        })
    end,
}

