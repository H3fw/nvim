-- ====================================================================================================================================================
-- TITLE : NeoVim options
-- ABOUT : general settings of nvim itself
-- ====================================================================================================================================================

-- basic settings

vim.opt.number = true -- Line numbers
vim.opt.relativenumber = true -- relative line numbers
vim.opt.cursorline = true -- highlights current line
vim.opt.scrolloff = 10 -- defines a margin of at least 10 lines from cursor
vim.opt.sidescrolloff = 8 -- || but for the sides
vim.opt.wrap = false -- no wrapping
vim.opt.cmdheight = 1 -- command line height
vim.opt.spelllang = { "en", "pt" } -- set language for spellchecking { English and Portuguese }

-- tabbing | indentation

vim.opt.tabstop = 2 -- tab width
vim.opt.shiftwidth = 2 -- indent width
vim.opt.softtabstop = 2 -- soft tab stop
vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.smartindent = true -- smart auto-identing
vim.opt.autoindent = true -- copies indent size from current line
vim.opt.grepprg = "rg --vimgrep" -- use ripgrep
vim.opt.grepformat = "%f:%l:%c:%m" -- filename, line number, column, content

-- search settings
vim.opt.ignorecase = true -- ignores caps(most of the time)
vim.opt.smartcase = true -- smart case-sensitity
vim.opt.hlsearch = true -- dont hl individual results
vim.opt.incsearch = true -- show matches as you type

-- visual settings
vim.opt.termguicolors = true -- enable 24-bit colors
vim.opt.signcolumn = "yes" -- always show sign column
vim.opt.colorcolumn = "0" -- show column at 100 characters
vim.opt.showmatch = true -- hl matching brackets
vim.opt.matchtime = 2 -- matching brackets hl duration
vim.opt.completeopt = "menuone,noinsert,noselect" -- completions
vim.opt.showmode = false -- doesnt show mode in command line
vim.opt.pumheight = 10 -- popup menu height
vim.opt.pumblend = 10 -- popup menu transparency
vim.opt.winblend = 0 -- floating window transparency
vim.opt.conceallevel = 0 -- don't hide markup
vim.opt.concealcursor = "" -- show markup even on cursor line
vim.opt.lazyredraw = false -- redraw while executing macros
vim.opt.redrawtime = 10000 -- syntax hl redraw timeout
vim.opt.maxmempattern = 20000 -- max memory for pattern matching
vim.opt.synmaxcol = 300 -- syntax hl column limit

-- file handling
vim.opt.backup = false -- don't creat bkup files
vim.opt.writebackup = false -- dont bkup before overwriting
vim.opt.swapfile = false -- no swap files
vim.opt.undofile = true -- persistent undo
vim.opt.updatetime = 300 -- time in ms to trigger CursorHold
vim.opt.timeoutlen = 5000 -- time in ms to wait for mapped sequence
vim.opt.ttimeoutlen = 0 -- no wait for key code sequences
vim.opt.autoread = true -- reload in case of external edit
vim.opt.autowrite = false -- dont auto save in some events

vim.opt.diffopt:append("vertical") -- vertical diff splits
vim.opt.diffopt:append("algorithm:patience") -- better diff agt
vim.opt.diffopt:append("linematch:60") -- better diff hl (smart line matching)

-- set undo dir
local undodir = "~/.local/share/nvim/undodir" -- undo dir path
vim.opt.undodir = vim.fn.expand(undodir) -- expand to full path
local undodir_path = vim.fn.expand(undodir)
if vim.fn.isdirectory(undodir_path) == 0 then
	vim.fn.mkdir(undodir_path, "p") -- create if doesnt exit
end

-- behaviour settings
vim.opt.errorbells = false -- disable error sounds
vim.opt.backspace = "indent,eol,start" -- mk backspace behave naturally
vim.opt.autochdir = true -- dont change dir automatically

-- vim.opt.iskeyword:append("-") -- treat dash as part of a word
vim.opt.path:append("**") -- search into subfolders with gf
vim.opt.selection = "inclusive" -- use inclusive selection
vim.opt.mouse = "a" -- enable mouse support
vim.opt.modifiable = true -- allow editing buffers
vim.opt.encoding = "UTF-8" -- use utf-8 encoding
vim.opt.wildmenu = true -- enable command-line completion menu
vim.opt.wildmode = "longest:full,full" -- completion mode for command-line
vim.opt.wildignorecase = true -- case insensitive tab completion in commands

-- cursor settings
vim.opt.guicursor = {
	"n-v-c:block", -- normal, visual, commandline
	"i-ci-ve:ver30", -- insert, command-line insert, visual-exclusive
	"r-cr:hor20", -- replace, command line replace
	"o:hor50", -- operator-pending
	"a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor", -- all modes: blinking n hl groups
	"sm:block-blinkwait175-blinkoff150-blinkon175", --showmatch mode
}

-- folding settings
vim.opt.foldmethod = "expr" -- use expression for folding
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- use treesitter for folding
vim.opt.foldlevel = 99 -- keep all folds open by default

-- split behaviour
vim.opt.splitbelow = true -- horizontal splits bellow
vim.opt.splitright = true -- vertical splits to the right
