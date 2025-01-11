

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"



vim.o.number = true
vim.o.relativenumber = true

-- Establece un esquema de colores predeterminado (cambia 'default' por el deseado)
vim.cmd("colorscheme sorbet") -- Cambia 'desert' por otro esquema disponible

-- Configura el fondo negro después del esquema
vim.cmd("highlight Normal guibg=#000000") -- Fondo negro

-- Alias de comandos para wl-clipboard
vim.cmd([[
    command -range YY <line1>,<line2>w !wl-copy
    command PP r !wl-paste
]])

