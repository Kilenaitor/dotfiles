-- @lint-ignore-every LUA_LUAJIT

local opt = vim.opt

vim.cmd('colorscheme Succulent')

opt.number = true -- show line numbers
opt.relativenumber = true -- show relative numbers by default

-- show absolute numbers in insert mode, relative in normal mode
vim.cmd([[
  augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
  augroup END
]])

opt.showmatch = true -- show matching brackets

opt.smartindent = true -- use c-like indents when no indentexpr is used
opt.expandtab = true -- use spaces instead of tabs
opt.shiftwidth = 2 -- use 2 spaces when inserting tabs
opt.tabstop = 2 -- show tabs as 2 spaces

opt.splitright = true -- vsplit to right of current window
opt.splitbelow = true -- hsplit to bottom of current window

opt.scrolloff = 5 -- include 2 rows of context above/below current line
opt.sidescrolloff = 10 -- include 5 colums of context to the left/right of current column

opt.ignorecase = true -- ignore case in searches...
opt.smartcase = true -- ...unless we use mixed case

opt.joinspaces = false -- join lines without two spaces

-- Commenting this out because Mosh doesn't like it :(
-- opt.termguicolors = true -- allow true colors

opt.inccommand = "nosplit" -- show effects of substitute incrementally

opt.mouse = "a" -- enable mouse mode

opt.updatetime = 400 -- decrease time for cursorhold event

opt.cursorline = true
-- opt.syntax = "ON"
opt.title = true
opt.ruler = true
opt.wrap = false
opt.showmatch = true
opt.scrolljump = 5
opt.lazyredraw = true

-- set leader to ,
vim.api.nvim_set_keymap(
  "",
  ",",
  "<Nop>",
  { noremap = true, silent = true }
)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Folding
opt.foldlevelstart = 10
opt.foldmethod = "indent"
vim.api.nvim_set_keymap(
  "n",
  "<Space>",
  "za",
  { noremap = true, silent = true }
)
-- Remember Folds
vim.cmd([[
  augroup remember_folds
    autocmd!
    autocmd BufWinLeave,BufLeave,BufWritePost,BufHidden,QuitPre ?* nested silent! mkview!
    autocmd BufWinEnter ?* silent! loadview
  augroup END
]])

-- Visual Move
vim.api.nvim_set_keymap(
  "n",
  "j",
  "gj",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "k",
  "gk",
  { noremap = true, silent = true }
)

-- Highlight last-inserted text
vim.api.nvim_set_keymap(
  "n",
  "gV",
  "`[v`]",
  { noremap = true, silent = true }
)

-- Buffers
opt.hidden = true -- allow background buffers
vim.api.nvim_set_keymap(
  "",
  "<leader>t",
  ":badd",
  {}
)
vim.api.nvim_set_keymap(
  "",
  "<leader>T",
  ":enew<CR>",
  {}
)
vim.api.nvim_set_keymap(
  "",
  "<leader>n",
  ":bnext<CR>",
  {}
)
vim.api.nvim_set_keymap(
  "",
  "<leader>p",
  ":bprevious<CR>",
  {}
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>l",
  ":buffers<CR>:buffer<Space>",
  { noremap = true, silent = true}
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>q",
  ":bp<bar>bd #<CR>",
  { noremap = true, silent = true}
)

-- Trigger an `autoread` when files change on disk
-- https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
-- https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
vim.cmd([[
  autocmd focusgained,bufenter,cursorhold,cursorholdi *
        \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif
]])
-- Notification after file change
-- https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
vim.cmd([[
  autocmd filechangedshellpost *
        \ echohl warningmsg | echo "file changed on disk. buffer reloaded." | echohl none
]])


vim.keymap.set('n', '<leader>c', require('osc52').copy_operator, {expr = true})
vim.keymap.set('n', '<leader>cc', '<leader>c_', {remap = true})
vim.keymap.set('v', '<leader>c', require('osc52').copy_visual)
vim.api.nvim_set_keymap('n', '<leader>e', ':Neotree filesystem reveal toggle<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>E', ':Neotree buffers reveal toggle<CR>', { silent = true })
