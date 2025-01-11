return {
    {
        "wuelnerdotexe/vim-enfocado", -- Un colorscheme popular
        lazy = false, -- Cargar inmediatamente
        priority = 1000, -- Prioridad alta para que se cargue antes que otros plugins
        config = function()
            vim.cmd.colorscheme("enfocado") -- Aplicar el colorscheme al cargar
        end,
    },
}
