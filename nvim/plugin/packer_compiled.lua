-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/alockinalock/.cache/nvim/packer_hererocks/2.1.1700008891/share/lua/5.1/?.lua;/Users/alockinalock/.cache/nvim/packer_hererocks/2.1.1700008891/share/lua/5.1/?/init.lua;/Users/alockinalock/.cache/nvim/packer_hererocks/2.1.1700008891/lib/luarocks/rocks-5.1/?.lua;/Users/alockinalock/.cache/nvim/packer_hererocks/2.1.1700008891/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/alockinalock/.cache/nvim/packer_hererocks/2.1.1700008891/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["bamboo.nvim"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/bamboo.nvim",
    url = "https://github.com/ribru17/bamboo.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-ultisnips"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/cmp-nvim-ultisnips",
    url = "https://github.com/quangnguyen30192/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  fzf = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["hover.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24hover.providers.lsp\frequire�\2\1\0\a\0\17\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0006\4\0\0'\6\1\0B\4\2\0029\4\1\0045\5\r\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\14\0006\4\0\0'\6\1\0B\4\2\0029\4\15\0045\5\16\0B\0\5\1K\0\1\0\1\0\1\tdesc\24hover.nvim (select)\17hover_select\agK\1\0\1\tdesc\15hover.nvim\6K\6n\bset\vkeymap\bvim\17preview_opts\1\0\0\tinit\1\0\2\ntitle\2\19preview_window\1\0\nsetup\nhover\frequire\0" },
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/hover.nvim",
    url = "https://github.com/lewis6991/hover.nvim"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n� \0\0\b\0v\0�\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\t\0005\3\n\0B\0\3\0016\0\v\0'\2\f\0B\0\2\0029\0\r\0005\2\14\0005\3\15\0=\3\16\0025\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\29\0005\5\28\0=\5\30\4=\4\31\0035\4 \0=\4!\0035\4\"\0=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\3=\3*\0024\3\0\0=\3+\0025\3,\0005\4-\0=\4.\0035\0040\0005\5/\0=\0051\0045\0052\0005\0063\0=\0064\5=\0055\0045\0056\0005\0067\0=\0064\5=\0058\4=\0049\3=\3:\0024\3\0\0=\3;\0025\3B\0005\4<\0004\5\0\0=\5=\0044\5\0\0=\5>\0044\5\0\0=\5?\0044\5\0\0=\5@\0044\5\0\0=\5A\4=\4C\0035\4D\0=\4E\0035\4X\0005\5F\0005\6G\0005\aH\0=\a4\6=\6I\0055\6J\0=\6K\0055\6L\0=\6M\0055\6N\0=\6O\0055\6P\0=\6Q\0055\6R\0=\6S\0055\6T\0=\6U\0055\6V\0=\6W\5=\0059\0045\5Y\0=\5Z\4=\4:\0034\4\0\0=\4+\3=\3[\0025\3]\0005\4\\\0=\4E\0035\4g\0005\5^\0005\6_\0005\a`\0=\a4\6=\6I\0055\6a\0=\6K\0055\6b\0=\6M\0055\6c\0=\6Q\0055\6d\0=\6S\0055\6e\0=\6U\0055\6f\0=\6W\5=\0059\4=\4:\3=\3h\0025\3s\0005\4i\0005\5j\0005\6k\0005\al\0=\a4\6=\6I\0055\6m\0=\6K\0055\6n\0=\6M\0055\6o\0=\6Q\0055\6p\0=\6S\0055\6q\0=\6U\0055\6r\0=\6W\5=\0059\4=\4:\3=\3\31\2B\0\2\0016\0\0\0009\0t\0'\2u\0B\0\2\1K\0\1\0#nnoremap \\ :Neotree reveal<cr>\bcmd\1\0\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\ntitle\rOrder by\15prefix_key\6o\1\2\1\0\14show_help\vnowait\1\1\0\a\agu\21git_unstage_file\6A\16git_add_all\agg\24git_commit_and_push\agp\rgit_push\agc\15git_commit\agr\20git_revert_file\aga\17git_add_file\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\ntitle\rOrder by\15prefix_key\6o\1\2\1\0\14show_help\vnowait\1\1\0\3\abd\18buffer_delete\t<bs>\16navigate_up\6.\rset_root\1\0\2\21group_empty_dirs\2\18show_unloaded\2\1\0\2\fenabled\2\20leave_dirs_open\1\15filesystem\26fuzzy_finder_mappings\1\0\4\t<up>\19move_cursor_up\n<C-n>\21move_cursor_down\n<C-p>\19move_cursor_up\v<down>\21move_cursor_down\1\0\0\aot\1\2\1\0\18order_by_type\vnowait\1\aos\1\2\1\0\18order_by_size\vnowait\1\aon\1\2\1\0\18order_by_name\vnowait\1\aom\1\2\1\0\22order_by_modified\vnowait\1\aog\1\2\1\0\24order_by_git_status\vnowait\1\aod\1\2\1\0\25order_by_diagnostics\vnowait\1\aoc\1\2\1\0\21order_by_created\vnowait\1\6o\1\0\2\ntitle\rOrder by\15prefix_key\6o\1\2\1\0\14show_help\vnowait\1\1\0\n\6D\27fuzzy_finder_directory\6#\17fuzzy_sorter\a]g\22next_git_modified\6f\21filter_on_submit\a[g\22prev_git_modified\n<c-x>\17clear_filter\6/\17fuzzy_finder\6H\18toggle_hidden\t<bs>\16navigate_up\6.\rset_root\24follow_current_file\1\0\2\fenabled\1\20leave_dirs_open\1\19filtered_items\1\0\3\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\2\19use_image_nvim\2\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\24\6l\18focus_preview\6A\18add_directory\6w\28open_with_window_picker\6q\17close_window\6x\21cut_to_clipboard\6R\frefresh\6z\20close_all_nodes\6?\14show_help\6C\15close_node\6c\tcopy\6<\16prev_source\6>\16next_source\6i\22show_file_details\6S\15open_split\6s\16open_vsplit\6t\16open_tabnew\n<esc>\vcancel\t<cr>\topen\18<2-LeftMouse>\topen\6m\tmove\6p\25paste_from_clipboard\6y\22copy_to_clipboard\6r\vrename\6d\vdelete\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\nwidth\3(\rposition\tleft\rcommands\30default_component_configs\19symlink_target\1\0\1\fenabled\1\fcreated\1\0\2\fenabled\2\19required_width\3n\18last_modified\1\0\2\fenabled\2\19required_width\3X\ttype\1\0\2\fenabled\2\19required_width\3z\14file_size\1\0\2\fenabled\2\19required_width\3@\15git_status\fsymbols\1\0\0\1\0\t\frenamed\t󰁕\fdeleted\b✖\nadded\5\rconflict\b\vstaged\b\runstaged\t󰄱\rmodified\5\fignored\b\14untracked\b\tname\1\0\3\26use_git_status_colors\2\19trailing_slash\1\14highlight\20NeoTreeFileName\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\17folder_empty\t󰜌\16folder_open\b\14highlight\20NeoTreeFileIcon\18folder_closed\b\fdefault\6*\vindent\1\0\t\18indent_marker\b│\17with_markers\2\fpadding\3\1\16indent_size\3\2\14highlight\24NeoTreeIndentMarker\23expander_highlight\20NeoTreeExpander\22expander_expanded\b\23expander_collapsed\b\23last_indent_marker\b└\14container\1\0\0\1\0\1\26enable_character_fade\2$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\1\0\6\23popup_border_style\frounded\25close_if_last_window\1\26sort_case_insensitive\1\"enable_normal_mode_for_inputs\1\23enable_diagnostics\2\22enable_git_status\2\nsetup\rneo-tree\frequire\1\0\2\ttext\t󰌵\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\bvim\0" },
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/nvim-pack/nvim-spectre"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["nvim-window-picker"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\3\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\t\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\1\0\0\abo\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\0\1\4\0\0\rneo-tree\19neo-tree-popup\vnotify\1\0\2\19autoselect_one\2\24include_current_win\1\nsetup\18window-picker\frequire\0" },
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/nvim-window-picker",
    url = "https://github.com/s1n7ax/nvim-window-picker"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["presence.nvim"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/presence.nvim",
    url = "https://github.com/andweeb/presence.nvim"
  },
  rainbow = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/rainbow",
    url = "https://github.com/luochen1990/rainbow"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  tagbar = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/vim-easymotion",
    url = "https://github.com/easymotion/vim-easymotion"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-lion"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/vim-lion",
    url = "https://github.com/tommcdo/vim-lion"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  vimux = {
    loaded = true,
    path = "/Users/alockinalock/.local/share/nvim/site/pack/packer/start/vimux",
    url = "https://github.com/preservim/vimux"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n� \0\0\b\0v\0�\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\t\0005\3\n\0B\0\3\0016\0\v\0'\2\f\0B\0\2\0029\0\r\0005\2\14\0005\3\15\0=\3\16\0025\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\29\0005\5\28\0=\5\30\4=\4\31\0035\4 \0=\4!\0035\4\"\0=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\3=\3*\0024\3\0\0=\3+\0025\3,\0005\4-\0=\4.\0035\0040\0005\5/\0=\0051\0045\0052\0005\0063\0=\0064\5=\0055\0045\0056\0005\0067\0=\0064\5=\0058\4=\0049\3=\3:\0024\3\0\0=\3;\0025\3B\0005\4<\0004\5\0\0=\5=\0044\5\0\0=\5>\0044\5\0\0=\5?\0044\5\0\0=\5@\0044\5\0\0=\5A\4=\4C\0035\4D\0=\4E\0035\4X\0005\5F\0005\6G\0005\aH\0=\a4\6=\6I\0055\6J\0=\6K\0055\6L\0=\6M\0055\6N\0=\6O\0055\6P\0=\6Q\0055\6R\0=\6S\0055\6T\0=\6U\0055\6V\0=\6W\5=\0059\0045\5Y\0=\5Z\4=\4:\0034\4\0\0=\4+\3=\3[\0025\3]\0005\4\\\0=\4E\0035\4g\0005\5^\0005\6_\0005\a`\0=\a4\6=\6I\0055\6a\0=\6K\0055\6b\0=\6M\0055\6c\0=\6Q\0055\6d\0=\6S\0055\6e\0=\6U\0055\6f\0=\6W\5=\0059\4=\4:\3=\3h\0025\3s\0005\4i\0005\5j\0005\6k\0005\al\0=\a4\6=\6I\0055\6m\0=\6K\0055\6n\0=\6M\0055\6o\0=\6Q\0055\6p\0=\6S\0055\6q\0=\6U\0055\6r\0=\6W\5=\0059\4=\4:\3=\3\31\2B\0\2\0016\0\0\0009\0t\0'\2u\0B\0\2\1K\0\1\0#nnoremap \\ :Neotree reveal<cr>\bcmd\1\0\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\ntitle\rOrder by\15prefix_key\6o\1\2\1\0\14show_help\vnowait\1\1\0\a\agu\21git_unstage_file\6A\16git_add_all\agg\24git_commit_and_push\agp\rgit_push\agc\15git_commit\agr\20git_revert_file\aga\17git_add_file\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\ntitle\rOrder by\15prefix_key\6o\1\2\1\0\14show_help\vnowait\1\1\0\3\abd\18buffer_delete\t<bs>\16navigate_up\6.\rset_root\1\0\2\21group_empty_dirs\2\18show_unloaded\2\1\0\2\fenabled\2\20leave_dirs_open\1\15filesystem\26fuzzy_finder_mappings\1\0\4\t<up>\19move_cursor_up\n<C-n>\21move_cursor_down\n<C-p>\19move_cursor_up\v<down>\21move_cursor_down\1\0\0\aot\1\2\1\0\18order_by_type\vnowait\1\aos\1\2\1\0\18order_by_size\vnowait\1\aon\1\2\1\0\18order_by_name\vnowait\1\aom\1\2\1\0\22order_by_modified\vnowait\1\aog\1\2\1\0\24order_by_git_status\vnowait\1\aod\1\2\1\0\25order_by_diagnostics\vnowait\1\aoc\1\2\1\0\21order_by_created\vnowait\1\6o\1\0\2\ntitle\rOrder by\15prefix_key\6o\1\2\1\0\14show_help\vnowait\1\1\0\n\6D\27fuzzy_finder_directory\6#\17fuzzy_sorter\a]g\22next_git_modified\6f\21filter_on_submit\a[g\22prev_git_modified\n<c-x>\17clear_filter\6/\17fuzzy_finder\6H\18toggle_hidden\t<bs>\16navigate_up\6.\rset_root\24follow_current_file\1\0\2\fenabled\1\20leave_dirs_open\1\19filtered_items\1\0\3\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\2\19use_image_nvim\2\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\24\6l\18focus_preview\6A\18add_directory\6w\28open_with_window_picker\6q\17close_window\6x\21cut_to_clipboard\6R\frefresh\6z\20close_all_nodes\6?\14show_help\6C\15close_node\6c\tcopy\6<\16prev_source\6>\16next_source\6i\22show_file_details\6S\15open_split\6s\16open_vsplit\6t\16open_tabnew\n<esc>\vcancel\t<cr>\topen\18<2-LeftMouse>\topen\6m\tmove\6p\25paste_from_clipboard\6y\22copy_to_clipboard\6r\vrename\6d\vdelete\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\nwidth\3(\rposition\tleft\rcommands\30default_component_configs\19symlink_target\1\0\1\fenabled\1\fcreated\1\0\2\fenabled\2\19required_width\3n\18last_modified\1\0\2\fenabled\2\19required_width\3X\ttype\1\0\2\fenabled\2\19required_width\3z\14file_size\1\0\2\fenabled\2\19required_width\3@\15git_status\fsymbols\1\0\0\1\0\t\frenamed\t󰁕\fdeleted\b✖\nadded\5\rconflict\b\vstaged\b\runstaged\t󰄱\rmodified\5\fignored\b\14untracked\b\tname\1\0\3\26use_git_status_colors\2\19trailing_slash\1\14highlight\20NeoTreeFileName\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\17folder_empty\t󰜌\16folder_open\b\14highlight\20NeoTreeFileIcon\18folder_closed\b\fdefault\6*\vindent\1\0\t\18indent_marker\b│\17with_markers\2\fpadding\3\1\16indent_size\3\2\14highlight\24NeoTreeIndentMarker\23expander_highlight\20NeoTreeExpander\22expander_expanded\b\23expander_collapsed\b\23last_indent_marker\b└\14container\1\0\0\1\0\1\26enable_character_fade\2$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\1\0\6\23popup_border_style\frounded\25close_if_last_window\1\26sort_case_insensitive\1\"enable_normal_mode_for_inputs\1\23enable_diagnostics\2\22enable_git_status\2\nsetup\rneo-tree\frequire\1\0\2\ttext\t󰌵\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: hover.nvim
time([[Config for hover.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24hover.providers.lsp\frequire�\2\1\0\a\0\17\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0006\4\0\0'\6\1\0B\4\2\0029\4\1\0045\5\r\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\14\0006\4\0\0'\6\1\0B\4\2\0029\4\15\0045\5\16\0B\0\5\1K\0\1\0\1\0\1\tdesc\24hover.nvim (select)\17hover_select\agK\1\0\1\tdesc\15hover.nvim\6K\6n\bset\vkeymap\bvim\17preview_opts\1\0\0\tinit\1\0\2\ntitle\2\19preview_window\1\0\nsetup\nhover\frequire\0", "config", "hover.nvim")
time([[Config for hover.nvim]], false)
-- Config for: nvim-window-picker
time([[Config for nvim-window-picker]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\3\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\t\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\1\0\0\abo\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\0\1\4\0\0\rneo-tree\19neo-tree-popup\vnotify\1\0\2\19autoselect_one\2\24include_current_win\1\nsetup\18window-picker\frequire\0", "config", "nvim-window-picker")
time([[Config for nvim-window-picker]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end