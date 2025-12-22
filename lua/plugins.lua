return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-surround'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  }
  use {
    "olimorris/codecompanion.nvim",
    config = function()
      require("codecompanion").setup({
        opts = {
          log_level = "DEBUG",
        }
      })
    end,
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "ravitemer/mcphub.nvim"
    }
  }
  use 'morhetz/gruvbox'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'windwp/nvim-ts-autotag'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { "nvim-telescope/telescope-live-grep-args.nvim" },
    },
    config = function()
      require('telescope').setup({})
      require('telescope').load_extension('live_grep_args')
    end
  }
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'github/copilot.vim'
  use 'tpope/vim-fugitive'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'
  use 'nvim-neotest/nvim-nio'
  use 'quangnguyen30192/cmp-nvim-ultisnips'
  use 'mfussenegger/nvim-dap'
  use 'suketa/nvim-dap-ruby'
  use { 'rcarriga/nvim-dap-ui', requires = 'mfussenegger/nvim-dap' }
  use { 'theHamsta/nvim-dap-virtual-text', requires = 'mfussenegger/nvim-dap' }
  use 'lukas-reineke/lsp-format.nvim'
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use 'vim-test/vim-test'
  use {
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  }
end)
