-- DEFAULT SETTINGS
local options = {
  backup = false,-- creates a backup file
  clipboard = "unnamedplus",-- use system clipboard
  conceallevel = 0,-- makes `` visible in markdown files
  fileencoding = "utf-8",-- use utf-8 default encoding
  hlsearch = false,-- remove highlight after searching
  ignorecase = false,-- explicit case searching
  mouse = "a",-- allow mouse usage in neovim
  showtabline = 2,-- always show tabs
  smartindent = true,-- auto indent as previous line
  splitbelow = true,-- force all h-splits below
  splitright = true,-- force all v-splits right
  swapfile = false,-- disable swapfile
  guicursor = "",-- disable thin cursor
  timeoutlen = 250,-- delay to listen for mapped sequence (in millisecs)
  undofile = true,-- enable persistent undo
  updatetime = 300,-- faster auto-complete time (default: 4000ms) 
  expandtab = true,-- convert tabs to spaces
  shiftwidth = 2,-- indent = 2 spaces 
  tabstop = 2,-- tabs = 2 spaces 
  cursorline = true,-- highlight current line
  number = true,-- enable line numbers
  relativenumber = true,-- enable relative line numbers
  scrolloff = 10,-- keep cursor 10 lines from end of screen 
  showmatch = true,-- show matching brackets
  errorbells = false,-- disable error bells for err message
}

for option, value in pairs(options) do 
  vim.opt[option] = value
end 

