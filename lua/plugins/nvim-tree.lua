return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Opcional, para iconos de archivo
  config = function()
    require('nvim-tree').setup()
  end,
}

