local nvimTree = require('nvim-tree')

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#E97207 ]])

nvimTree.setup({
  view = {
    adaptive_size = true,
  },
  renderer = {  
    icons = {
      glyphs = {
        folder = {
          arrow_closed = '',
          arrow_open = '',
        }
      }
    }
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      }
    }
  } 
})
