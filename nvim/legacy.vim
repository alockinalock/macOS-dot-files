" colorscheme and highlighting
"set termguicolors
" onedark theme which never worked as intended for me
"let g:onedark_config = {
"			 \ 'style': 'cool',
"\}
"colorscheme onedark
"let g:gruvbox_contrast_dark='hard'
"let g:gruvbox_contrast_light='hard'
"colorscheme gruvbox
"hi LspCxxHlGroupMemberVariable guifg=#83a598
"colorscheme kanagawa-dragon
syntax on

" enable history for fzf
let g:fzf_history_dir = '~/.local/share/fzf-history'

" mouse support
set mouse=a

" faster updates
set updatetime=100

" no hidden buffers
set nohidden

" history
set undodir=~/.cache/nvim/undodir
set undofile

" automatically read on change
set autoread

" move to start of line when jumping lines
let g:EasyMotion_startofline = 1

"let g:AutoPairsFlyMode = 0
"let g:AutoPairsShortcutBackInsert = '<M-b>'

" language-specific formatters
au FileType cpp set formatprg=clang-format | set equalprg=clang-format

let g:lion_squeeze_spaces = 1

" rainbow parens
let g:rainbow_active = 1

set nocompatible
let c_no_curly_error=1

let g:rustfmt_autosave = 1

" Python test (this breaks, idk why)
" let g:python3_host_prog="/usr/local/bin/python3"
let g:python3_host_prog="/opt/homebrew/bin/python3" " homebrew does not install to usr, it installs to this directory (found with which python3)

" Position in code
set number
set ruler

" Don't make noise
set visualbell

" default file encoding
set encoding=utf-8

" Line wrap
set wrap

set noexpandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

" Function to trim extra whitespace in whole file
function! Trim()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

command! -nargs=0 Trim call Trim()

set laststatus=2


" Highlight search results
set hlsearch
set incsearch

set t_Co=256


" disable backup files
set nobackup
set nowritebackup

set shortmess+=c

set signcolumn=yes

au FileType text set colorcolumn=80

" ------------------------------------------------------

" easy-motion
" disable default mappings, turn on case-insensitivity
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1

" find character
nmap .s <Plug>(easymotion-overwin-f)

" find 2 characters
nmap .d <Plug>(easymotion-overwin-f2)

" global word find
nmap .g <Plug>(easymotion-overwin-w)

" t/f (find character on line)
nmap .t <Plug>(easymotion-tl)
nmap .f <Plug>(easymotion-fl)

" move to start of line when jumping lines
let g:EasyMotion_startofline = 1

" jk/l motions: Line motions
nmap .j <Plug>(easymotion-j)
nmap .k <Plug>(easymotion-k)
nmap ./ <Plug>(easymotion-overwin-line)

nmap .a <Plug>(easymotion-jumptoanywhere)

" ;t is trim
nnoremap ;t <silent> :Trim<CR>

" easy search
nnoremap ;s :s/

" easy search/replace with current visual selection
xnoremap ;s y:%s/<C-r>"//g<Left><Left>

" easy search/replace on current line with visual selection
xnoremap ;ls y:.s/<C-r>"//g<Left><Left>

" ;w is save
noremap <silent> ;w :update<CR>

";f formats in normal mode
noremap <silent> ;f gg=G``:w<CR>

" alt-a as esc-a for select
nmap <esc>a <a-a>

" Disable C-z from job-controlling neovim
nnoremap <c-z> <nop>

" Ctrl-k closes all floating windows in normal mode
nmap <c-k> call coc#float#close_all()

" Remap C-c to <esc>
nmap <c-c> <esc>
imap <c-c> <esc>
vmap <c-c> <esc>
omap <c-c> <esc>

" Map insert mode CTRL-{hjkl} to arrows
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>

" same in normal mode
nmap <C-h> <Left>
nmap <C-j> <Down>
nmap <C-k> <Up>
nmap <C-l> <Right>

" , ; - appends a semicolon at the end of line in normal mode
nnoremap <leader>; :normal A;<CR>

"  --------------------------------------------------------

" tagbar
nnoremap <F8> :TagbarToggle<CR>

" FZF and file nav
nnoremap <C-p> :Files<CR>
nnoremap <C-g> :Rg<CR>

" easy motion
nnoremap .s <Plug>(easymotion-overwin-f)
nnoremap .d <Plug>(easymotion-overwin-f2)
nnoremap .g <Plug>(easymotion-overwin-w)
nnoremap .t <Plug>(easymotion-tl)
nnoremap .f <Plug>(easymotion-fl)
nnoremap .j <Plug>(easymotion-j)
nnoremap .k <Plug>(easymotion-k)
nnoremap ./ <Plug>(easymotion-overwin-line)
nnoremap .a <Plug>(easymotion-jumptoanywhere)

" c++ header and source files, oh and std::optional wrapping
au BufEnter,BufNew *.cpp nnoremap <silent> ;p :e %<.hpp<CR>
au BufEnter,BufNew *.hpp nnoremap <silent> ;p :e %<.cpp<CR>

au BufEnter,BufNew *.cpp nnoremap <silent> ;vp :leftabove vs %<.hpp<CR>
au BufEnter,BufNew *.hpp nnoremap <silent> ;vp :rightbelow vs %<.cpp<CR>

au BufEnter,BufNew *.cpp nnoremap <silent> ;xp :leftabove split %<.hpp<CR>
au BufEnter,BufNew *.hpp nnoremap <silent> ;xp :rightbelow split %<.cpp<CR>

au BufEnter,BufNew *.c nnoremap <silent> ;p :e %<.h<CR>
au BufEnter,BufNew *.h nnoremap <silent> ;p :e %<.c<CR>

au BufEnter,BufNew *.c nnoremap <silent> ;vp :leftabove vs %<.h<CR>
au BufEnter,BufNew *.h nnoremap <silent> ;vp :rightbelow vs %<.c<CR>

au BufEnter,BufNew *.c nnoremap <silent> ;xp :leftabove split %<.h<CR>
au BufEnter,BufNew *.h nnoremap <silent> ;xp :rightbelow split %<.c<CR>

" utilsnips
let g:UltiSnipsExpandTrigger = '<f5>'

" nvim-dap bindings
nnoremap <silent> <F5> <Cmd>lua require'dap'.continue()<CR>
nnoremap <silent> <F10> <Cmd>lua require'dap'.step_over()<CR>
nnoremap <silent> <F11> <Cmd>lua require'dap'.step_into()<CR>
nnoremap <silent> <F12> <Cmd>lua require'dap'.step_out()<CR>
nnoremap <silent> <Leader>b <Cmd>lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <Leader>B <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <Leader>lp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <Leader>dr <Cmd>lua require'dap'.repl.open()<CR>
nnoremap <silent> <Leader>dl <Cmd>lua require'dap'.run_last()<CR>





























" Cheat Sheet for legacy.vim Keybindings
"
" Navigation and Editing:
" - ;t: Trim whitespace from the entire file
" - ;s: Perform a search and replace
" - ;s: Perform a search and replace with current visual selection
" - ;ls: Perform search/replace on current line with visual selection
" - ;w: Save the current file
" - ;f: Format the entire file using `clang-format`
" - <esc>a: Use Alt-a to simulate Esc-a for select mode
" - <c-k>: Close all floating windows in normal mode
" - <c-c>: Map Ctrl-c to Esc in normal, insert, visual, and operator-pending modes
" - Ctrl-hjkl: Map Ctrl-hjkl to arrow keys in insert and normal modes
"
" Easy Motion:
" - .s: Find character
" - .d: Find 2 characters
" - .g: Global word find
" - .t: Find character on line
" - .f: Find character on line and forward
" - .j: Jump to lines using jk/l motions
" - .k: Jump to lines using jk/l motions
" - ./: Find line
" - .a: Jump to anywhere
"
" Tagbar and File Navigation:
" - <F8>: Toggle Tagbar
" - <C-p>: Open FZF Files
" - <C-g>: Run Ripgrep search
"
" C++ Header and Source File Switching:
" - ;p: Switch between .cpp and .hpp files
" - ;vp: Open .hpp file in vertical split
" - ;xp: Open .hpp file in horizontal split
" - ;p: Switch between .c and .h files
" - ;vp: Open .h file in vertical split
" - ;xp: Open .h file in horizontal split
"
" UtilSnips:
" - <f5>: UtilSnips trigger key
"
" Debugger (nvim-dap):
" - <F5>: Continue debugging
" - <F10>: Step over
" - <F11>: Step into
" - <F12>: Step out
" - <Leader>b: Toggle breakpoint
" - <Leader>B: Set breakpoint with condition
" - <Leader>lp: Set log point
" - <Leader>dr: Open debugger REPL
" - <Leader>dl: Run last debugger configuration
