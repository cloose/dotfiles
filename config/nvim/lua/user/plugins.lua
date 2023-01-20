-- Bootstrap packer.nvim
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

  if fn.empty(fn.glob(install_path)) > 0 then
    -- git clone https://github.com/wbthomason/packer.nvim
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]

    return true
  end

  return false
end

local packer_bootstrap = ensure_packer()

-- Automatically run :PackerSync whenever this file is updated
local packer_augroup = vim.api.nvim_create_augroup('Packer', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
  desc = "Sync packer after modifying plugins.lua",
  group = packer_augroup,
  command = 'source <afile> | PackerSync',
  pattern = 'plugins.lua'
})

-- Package Management
return require('packer').startup(function(use)
  -- manage itself
  use 'wbthomason/packer.nvim'

  -- Fancy statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Fancy bufferline
  use 'nvim-tree/nvim-web-devicons'
  use {
    'romgrk/barbar.nvim',
    wants = 'nvim-web-devicons'
  }

  -- Highlight, edit, and navigate code
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      require('nvim-treesitter.install').update({
        with_sync = true
      })
    end
  }

  -- LSP, autocompletion, and snippets
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  -- LSP diagnostics
  use {
    'folke/trouble.nvim',
    requires = 'nvim-tree/nvim-web-devicons'
  }

  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- file tree viewer
  use 'nvim-tree/nvim-tree.lua'

  -- Git related plugins
  use 'tpope/vim-fugitive'

  -- Color schemes
  use 'navarasu/onedark.nvim'

  -- terminal
  -- currently doesn't work well on Windows with Git Bash
  --use { 'akinsho/toggleterm.nvim', tag = '*' }

  -- key map cheatsheet
  use 'folke/which-key.nvim'

  -- MUST BE AT END OF ALL PLUGINS
  -- automatically sync all plugins after packer bootstrap
  if packer_bootstrap then
    require('packer').sync()
  end
end)
