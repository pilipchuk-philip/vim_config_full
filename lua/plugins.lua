-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
      'preservim/nerdtree',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  -- use {
  --   'kyazdani42/nvim-tree.lua',
  --   requires = {
  --     'kyazdani42/nvim-web-devicons', -- optional, for file icon
  --   },
  --   config = function() require'nvim-tree'.setup {} end
  -- }
  -- Lazy loading:
  -- Load on specific commands
  -- use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- Load on an autocommand event
  use {'andymass/vim-matchup', event = 'VimEnter'}

  -- Plugins can have dependencies on other plugins
  use {
    'haorenW1025/completion-nvim',
    opt = true,
    requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
  }

    use 'terrortylor/nvim-comment'
    --require('nvim_comment').setup()
  -- Use dependency and run lua function after load
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }

  -- You can specify multiple plugins in a single call
  --use {
        --'nvim-treesitter/nvim-treesitter',
        --run = ':TSUpdate'
    --}
  --theme = 'tokyonight'
  use {
      'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use 'wfxr/minimap.vim'


  -- Табы вверху
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons',
  config = function()
      require("bufferline").setup{}
  end, }

  use { 
    'ibhagwan/fzf-lua',
    requires = {
      'vijaymarupudi/nvim-fzf',
      'kyazdani42/nvim-web-devicons' } -- optional for icons
  }
  --use 'preservim/nerdcommenter'
  use 'folke/todo-comments.nvim'

  use 'airblade/vim-gitgutter'
  use 'tpope/vim-fugitive'

  use 'mileszs/ack.vim'
  use 'tweekmonster/django-plus.vim'

  -- Plug 'romgrk/barbar.nvim'
  use 'MattesGroeger/vim-bookmarks'

  -- Collection of configurations for built-in LSP client
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- Автодополнялка
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'saadparwaiz1/cmp_luasnip'

  --- Автодополнлялка к файловой системе
  use 'hrsh7th/cmp-path'

  -- Snippets plugin
  use 'L3MON4D3/LuaSnip'


  --use {
    --'nvim-telescope/telescope.nvim',
    --requires = { {'nvim-lua/plenary.nvim'} }
  --}

  --use
  -----------------------------------------------------------
  -- PYTHON
  -----------------------------------------------------------
  -- Поддержка темплейтом jinja2
  use 'mitsuhiko/vim-jinja'

  -----------------------------------------------------------
  -- РАЗНОЕ
  -----------------------------------------------------------
  -- Даже если включена русская раскладка vim команды будут работать
  use 'powerman/vim-plugin-ruscmd'
  use 'tpope/vim-surround'
  -- Считает кол-во совпадений при поиске
  use 'google/vim-searchindex'
  -- Может повторять через . vimsurround
  use 'tpope/vim-repeat'
  -- Закрывает автоматом скобки
  use 'cohama/lexima.vim'
  -- Линтер, работает для всех языков
  use 'dense-analysis/ale'
  use 'folke/tokyonight.nvim'
  --use 'Xuyuanp/nerdtree-git-plugin'
  --use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'numirias/semshi'


end)



