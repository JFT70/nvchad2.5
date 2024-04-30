return {
  'nvim-telescope/telescope-fzf-native.nvim',
  event = 'VeryLazy',
  build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
  config = function ()
    local telescope = require "telescope"
    telescope.setup()
    telescope.load_extension('fzf')
  end
}
