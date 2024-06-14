require('lualine').setup({
  sections = {
    lualine_b = {},
    lualine_c = {
      {
        'filename',
        path = 1,
      },
    },
    lualine_x = {},
    lualine_y = {},
  },
  inactive_sections = {
    lualine_c = {
      {
        'filename',
        path = 1,
      },
    },
  },
  extensions = {'nvim-tree'},
})
