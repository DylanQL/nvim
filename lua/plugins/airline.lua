return {
    {
        "vim-airline/vim-airline",
        config = function()
            -- Activar Airline y configurar opciones básicas
            vim.g.airline_powerline_fonts = 1
            vim.g.airline_theme = 'simple'
            vim.g['airline#extensions#tabline#enabled'] = 1
            vim.g['airline#extensions#tabline#left_sep'] = ' '
            vim.g['airline#extensions#tabline#left_alt_sep'] = '|'

            -- Configurar separadores personalizados
            vim.g['airline_left_sep'] = ''
	    vim.g['airline_right_sep'] = ''
          

        end,
    },
}

