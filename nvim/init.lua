require('plugins')

require('bamboo').setup {
	style = 'multiplex',
}

require('bamboo').load()

-- spectre
require('spectre').setup({
  live_update = true,
  ['run_replace'] = {
    map = "<leader>l",
    cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
    desc = "replace all"
  },
  find_engine = {
    ['rg'] = {
      cmd = "rg",
      args = {
        '--color=never',
        '--no-heading',
        '--with-filename',
        '--line-number',
        '--column',
        '--pcre2',
      } ,
      options = {
        ['ignore-case'] = {
          value= "--ignore-case",
          icon="[I]",
          desc="ignore case"
        },
        ['hidden'] = {
          value="--hidden",
          desc="hidden file",
          icon="[H]"
        },
        -- you can put any rg search option you want here it can toggle with
        -- show_option function
      }
    },
  }
})


vim.g.mapleader = "," -- default is \ but that looks pretty... ugly

-- load legacy options
vim.cmd([[
so ~/.config/nvim/legacy.vim
]])

require('nvimcmp')
require('mylsp')

-- remove the cursor animation
-- vim.g.neovide_cursor_animation_length = 0

-- font and font size
-- vim.o.guifont = "Roboto Mono:h15"

-- theme
-- vim.o.background = "dark"
-- vim.cmd([[colorscheme gruvbox]])

-- require('nvimcmp') only if there is a .lua file for this
-- require('mylsp') same for this one


-- lsp_signature.nvim
require "lsp_signature".setup({
	hint_prefix = "",
	floating_window = false,
	bind = true,
})

-- lualine
require('lualine').setup{
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_c = {
			'filename',
			function()
				return vim.fn['nvim.treesitter#statusline'](180)
			end},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
	},
}

-- nvim-treesitter
require('nvim-treesitter.configs').setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
	highlight = {
		enable = true,
	},
}

-- rust-tools stup
local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})

-- nvim-autopairs is disabled because it had autoindentation problems
-- to renable it, you must edit init.lua (this file), legacy.vim, and plugins.lua (don't forget to :PackerCompile)

--require ('nvim-autopairs').setup {}


-- nvim-dap
local dap = require('dap')
dap.adapters.lldb = {
  type = 'executable',
  command = 'lldb-vscode',
  name = 'lldb'
}

dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
  },
}

-- same config for C
dap.configurations.c = dap.configurations.cpp
