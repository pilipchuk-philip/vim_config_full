require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    -- theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff',
                  {'diagnostics', sources={'nvim_lsp', 'coc'}}},
    lualine_c = {
        {
            'filename',
            file_status = true,
            path = 1,
            shorting_target = 40
        }
    },
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

--- =>
------ buffer line
require'bufferline'.setup{
    options = {
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            if context.buffer:current() then
                return ''
            end

            return ''
        end,
        offsets = {
            {
                filetype = "CHADtree",
                text = "File Explorer",
                highlight = "Directory",
                text_align = "left"
            }
        }
    }
}


vim.cmd[[let g:NERDTreeGitStatusUseNerdFonts = 1]]

local actions = require "fzf-lua.actions"

require'fzf-lua'.setup {
  winopts = {
      split = 'belowright new'
}}

vim.cmd[[ let g:minimap_auto_start = 1 ]]
vim.cmd[[ let g:minimap_width = 15 ]]
vim.cmd[[ let g:minmap_auto_start = 1 ]]
vim.cmd[[ let g:minimap_auto_start_win_enter = 1 ]]

-- Gitsigns
require('gitsigns').setup {
  signs = {
    add = { hl = 'GitGutterAdd', text = '+' },
    change = { hl = 'GitGutterChange', text = '~' },
    delete = { hl = 'GitGutterDelete', text = '_' },
    topdelete = { hl = 'GitGutterDelete', text = '‾' },
    changedelete = { hl = 'GitGutterChange', text = '~' },
  },
}

